
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int y; int x; } ;
struct pwc_device {scalar_t__ pixfmt; int cmd_len; unsigned char* cmd_buf; int vframes; int vsize; int vsnapshot; scalar_t__ valternate; scalar_t__ vbandlength; int frame_size; TYPE_2__ image; int type; } ;
struct TYPE_3__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; int member_10; int member_11; } ;
struct Kiara_table_entry {int member_0; int member_1; int member_2; scalar_t__ alternate; unsigned char* mode; scalar_t__ bandlength; TYPE_1__ member_3; } ;


 int EINVAL ;
 int ENOENT ;
 struct Kiara_table_entry*** Kiara_table ;
 int PSZ_MAX ;
 int PSZ_VGA ;
 int PWC_DEBUG_SIZE (char*) ;
 int PWC_TRACE (char*,int,...) ;
 scalar_t__ V4L2_PIX_FMT_YUV420 ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int pwc_dec23_init (struct pwc_device*,int ,unsigned char*) ;
 TYPE_2__* pwc_image_sizes ;
 int send_video_command (struct pwc_device*,int,unsigned char*,int) ;

__attribute__((used)) static int set_video_mode_Kiara(struct pwc_device *pdev, int size, int frames, int compression, int snapshot)
{
 const struct Kiara_table_entry *pChoose = ((void*)0);
 int fps, ret;
 unsigned char buf[12];
 struct Kiara_table_entry RawEntry = {6, 773, 1272, {0xAD, 0xF4, 0x10, 0x27, 0xB6, 0x24, 0x96, 0x02, 0x30, 0x05, 0x03, 0x80}};

 if (size >= PSZ_MAX || frames < 5 || frames > 30 || compression < 0 || compression > 3)
  return -EINVAL;
 if (size == PSZ_VGA && frames > 15)
  return -EINVAL;
 fps = (frames / 5) - 1;


 if (size == PSZ_VGA && frames == 5 && snapshot && pdev->pixfmt != V4L2_PIX_FMT_YUV420)
 {




  PWC_DEBUG_SIZE("Choosing VGA/5 BAYER mode.\n");
  pChoose = &RawEntry;
 }
 else
 {




  snapshot = 0;
  while (compression <= 3) {
   pChoose = &Kiara_table[size][fps][compression];
   if (pChoose->alternate != 0)
    break;
   compression++;
  }
 }
 if (pChoose == ((void*)0) || pChoose->alternate == 0)
  return -ENOENT;

 PWC_TRACE("Using alternate setting %d.\n", pChoose->alternate);


 memcpy(buf, pChoose->mode, 12);
 if (snapshot)
  buf[0] |= 0x80;


 ret = send_video_command(pdev, 4 , buf, 12);
 if (ret < 0)
  return ret;

 if (pChoose->bandlength > 0 && pdev->pixfmt == V4L2_PIX_FMT_YUV420)
  pwc_dec23_init(pdev, pdev->type, buf);

 pdev->cmd_len = 12;
 memcpy(pdev->cmd_buf, buf, 12);

 pdev->vframes = frames;
 pdev->vsize = size;
 pdev->vsnapshot = snapshot;
 pdev->valternate = pChoose->alternate;
 pdev->image = pwc_image_sizes[size];
 pdev->vbandlength = pChoose->bandlength;
 if (pdev->vbandlength > 0)
  pdev->frame_size = (pdev->vbandlength * pdev->image.y) / 4;
 else
  pdev->frame_size = (pdev->image.x * pdev->image.y * 12) / 8;
 PWC_TRACE("frame_size=%d, vframes=%d, vsize=%d, vsnapshot=%d, vbandlength=%d\n",
     pdev->frame_size,pdev->vframes,pdev->vsize,pdev->vsnapshot,pdev->vbandlength);
 return 0;
}
