
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vps ;
struct vbi_vps {int* data; } ;
struct vbi_info {int wss_payload; struct vbi_vps vps_payload; } ;
struct vbi_cc {int* even; int* odd; } ;
struct v4l2_sliced_vbi_data {scalar_t__ id; int line; scalar_t__ field; int* data; } ;
struct ivtv {int i_flags; struct vbi_info vbi; } ;


 int IVTV_F_I_UPDATE_VPS ;
 int IVTV_F_I_UPDATE_WSS ;
 scalar_t__ V4L2_SLICED_CAPTION_525 ;
 scalar_t__ V4L2_SLICED_VPS ;
 scalar_t__ V4L2_SLICED_WSS_625 ;
 scalar_t__ memcmp (struct vbi_vps*,struct vbi_vps*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ivtv_write_vbi_line(struct ivtv *itv,
    const struct v4l2_sliced_vbi_data *d,
    struct vbi_cc *cc, int *found_cc)
{
 struct vbi_info *vi = &itv->vbi;

 if (d->id == V4L2_SLICED_CAPTION_525 && d->line == 21) {
  if (d->field) {
   cc->even[0] = d->data[0];
   cc->even[1] = d->data[1];
  } else {
   cc->odd[0] = d->data[0];
   cc->odd[1] = d->data[1];
  }
  *found_cc = 1;
 } else if (d->id == V4L2_SLICED_VPS && d->line == 16 && d->field == 0) {
  struct vbi_vps vps;

  vps.data[0] = d->data[2];
  vps.data[1] = d->data[8];
  vps.data[2] = d->data[9];
  vps.data[3] = d->data[10];
  vps.data[4] = d->data[11];
  if (memcmp(&vps, &vi->vps_payload, sizeof(vps))) {
   vi->vps_payload = vps;
   set_bit(IVTV_F_I_UPDATE_VPS, &itv->i_flags);
  }
 } else if (d->id == V4L2_SLICED_WSS_625 &&
     d->line == 23 && d->field == 0) {
  int wss = d->data[0] | d->data[1] << 8;

  if (vi->wss_payload != wss) {
   vi->wss_payload = wss;
   set_bit(IVTV_F_I_UPDATE_WSS, &itv->i_flags);
  }
 }
}
