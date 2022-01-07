
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_4__ {int sliced; int vbi; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
struct TYPE_6__ {int count; int enc_size; int raw_size; int sliced_size; int fpi; void* enc_start; TYPE_2__ in; } ;
struct ivtv {int hw_flags; scalar_t__ is_60hz; TYPE_3__ vbi; int sd_video; } ;


 int CX2341X_ENC_SET_VBI_CONFIG ;
 int CX2341X_ENC_SET_VBI_LINE ;
 int CX2341X_MBOX_MAX_DATA ;
 int IVTV_DEBUG_INFO (char*,void*,void*,int,...) ;
 int IVTV_HW_CX25840 ;
 int ivtv_api (struct ivtv*,int ,int,void**) ;
 int ivtv_raw_vbi (struct ivtv*) ;
 int ivtv_vapi (struct ivtv*,int ,int,int,int,int ,int ,int ) ;
 int s_raw_fmt ;
 int s_sliced_fmt ;
 int v4l2_subdev_call (int ,int ,int ,int *) ;
 int vbi ;

__attribute__((used)) static void ivtv_vbi_setup(struct ivtv *itv)
{
 int raw = ivtv_raw_vbi(itv);
 u32 data[CX2341X_MBOX_MAX_DATA];
 int lines;
 int i;


 ivtv_vapi(itv, CX2341X_ENC_SET_VBI_LINE, 5, 0xffff , 0, 0, 0, 0);


 if (raw)
  v4l2_subdev_call(itv->sd_video, vbi, s_raw_fmt, &itv->vbi.in.fmt.vbi);
 else
  v4l2_subdev_call(itv->sd_video, vbi, s_sliced_fmt, &itv->vbi.in.fmt.sliced);






 if (raw) {
  lines = itv->vbi.count * 2;
 } else {
  lines = itv->is_60hz ? 24 : 38;
  if (itv->is_60hz && (itv->hw_flags & IVTV_HW_CX25840))
   lines += 2;
 }

 itv->vbi.enc_size = lines * (raw ? itv->vbi.raw_size : itv->vbi.sliced_size);



 data[0] = raw | 0x02 | (0xbd << 8);


 data[1] = 1;

 data[2] = raw ? 4 : 4 * (itv->vbi.raw_size / itv->vbi.enc_size);







 if (itv->hw_flags & IVTV_HW_CX25840) {

  if (raw) {
   data[3] = 0x20602060;
   data[4] = 0x30703070;
  } else {
   data[3] = 0xB0F0B0F0;
   data[4] = 0xA0E0A0E0;
  }

  data[5] = lines;

  data[6] = (raw ? itv->vbi.raw_size : itv->vbi.sliced_size);
 } else {

  if (raw) {
   data[3] = 0x25256262;
   data[4] = 0x387F7F7F;
  } else {
   data[3] = 0xABABECEC;
   data[4] = 0xB6F1F1F1;
  }

  data[5] = lines;

  data[6] = itv->vbi.enc_size / lines;
 }

 IVTV_DEBUG_INFO(
  "Setup VBI API header 0x%08x pkts %d buffs %d ln %d sz %d\n",
   data[0], data[1], data[2], data[5], data[6]);

 ivtv_api(itv, CX2341X_ENC_SET_VBI_CONFIG, 7, data);


 itv->vbi.enc_start = data[2];
 itv->vbi.fpi = data[0];
 if (!itv->vbi.fpi)
  itv->vbi.fpi = 1;

 IVTV_DEBUG_INFO("Setup VBI start 0x%08x frames %d fpi %d\n",
  itv->vbi.enc_start, data[1], itv->vbi.fpi);



 for (i = 2; i <= 24; i++) {
  int valid;

  if (itv->is_60hz) {
   valid = i >= 10 && i < 22;
  } else {
   valid = i >= 6 && i < 24;
  }
  ivtv_vapi(itv, CX2341X_ENC_SET_VBI_LINE, 5, i - 1,
    valid, 0 , 0, 0);
  ivtv_vapi(itv, CX2341X_ENC_SET_VBI_LINE, 5, (i - 1) | 0x80000000,
    valid, 0, 0, 0);
 }







}
