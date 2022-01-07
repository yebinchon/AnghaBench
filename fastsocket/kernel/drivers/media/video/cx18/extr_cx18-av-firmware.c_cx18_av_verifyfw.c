
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct firmware {int size; scalar_t__* data; } ;
struct TYPE_2__ {struct v4l2_subdev sd; } ;
struct cx18 {TYPE_1__ av_state; } ;


 int CX18_ERR_DEV (struct v4l2_subdev*,char*,int ,int,int) ;
 int CX18_INFO_DEV (struct v4l2_subdev*,char*,int ,int) ;
 int CXADEC_DL_CTL ;
 int EIO ;
 int FWFILE ;
 int cx18_av_read4 (struct cx18*,int ) ;
 int cx18_av_write4_noretry (struct cx18*,int ,int) ;

__attribute__((used)) static int cx18_av_verifyfw(struct cx18 *cx, const struct firmware *fw)
{
 struct v4l2_subdev *sd = &cx->av_state.sd;
 int ret = 0;
 const u8 *data;
 u32 size;
 int addr;
 u32 expected, dl_control;


 dl_control = cx18_av_read4(cx, CXADEC_DL_CTL);
 do {
  dl_control &= 0x00ffffff;
  dl_control |= 0x0f000000;
  cx18_av_write4_noretry(cx, CXADEC_DL_CTL, dl_control);
  dl_control = cx18_av_read4(cx, CXADEC_DL_CTL);
 } while ((dl_control & 0xff000000) != 0x0f000000);


 while (dl_control & 0x3fff)
  dl_control = cx18_av_read4(cx, CXADEC_DL_CTL);

 data = fw->data;
 size = fw->size;
 for (addr = 0; addr < size; addr++) {
  dl_control &= 0xffff3fff;
  expected = 0x0f000000 | ((u32)data[addr] << 16) | addr;
  if (expected != dl_control) {
   CX18_ERR_DEV(sd, "verification of %s firmware load "
         "failed: expected %#010x got %#010x\n",
         FWFILE, expected, dl_control);
   ret = -EIO;
   break;
  }
  dl_control = cx18_av_read4(cx, CXADEC_DL_CTL);
 }
 if (ret == 0)
  CX18_INFO_DEV(sd, "verified load of %s firmware (%d bytes)\n",
         FWFILE, size);
 return ret;
}
