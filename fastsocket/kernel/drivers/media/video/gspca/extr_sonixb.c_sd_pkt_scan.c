
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {scalar_t__ bridge; int* header; int prev_avg_lum; int frames_to_drop; int avg_lum; } ;
struct cam {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; int image_len; struct cam cam; } ;
struct TYPE_2__ {int priv; int sizeimage; } ;


 scalar_t__ BRIDGE_103 ;
 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int MODE_RAW ;
 int atomic_set (int *,int) ;
 int * find_sof (struct gspca_dev*,int *,int) ;
 int gspca_frame_add (struct gspca_dev*,int ,int *,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 int fr_h_sz = 0, lum_offset = 0, len_after_sof = 0;
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam = &gspca_dev->cam;
 u8 *sof;

 sof = find_sof(gspca_dev, data, len);
 if (sof) {
  if (sd->bridge == BRIDGE_103) {
   fr_h_sz = 18;
   lum_offset = 3;
  } else {
   fr_h_sz = 12;
   lum_offset = 2;
  }

  len_after_sof = len - (sof - data);
  len = (sof - data) - fr_h_sz;
  if (len < 0)
   len = 0;
 }

 if (cam->cam_mode[gspca_dev->curr_mode].priv & MODE_RAW) {


  int used;
  int size = cam->cam_mode[gspca_dev->curr_mode].sizeimage;

  used = gspca_dev->image_len;
  if (used + len > size)
   len = size - used;
 }

 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);

 if (sof) {
  int lum = sd->header[lum_offset] +
     (sd->header[lum_offset + 1] << 8);
  if (lum == 0 && sd->prev_avg_lum != 0) {
   lum = -1;
   sd->frames_to_drop = 2;
   sd->prev_avg_lum = 0;
  } else
   sd->prev_avg_lum = lum;
  atomic_set(&sd->avg_lum, lum);

  if (sd->frames_to_drop)
   sd->frames_to_drop--;
  else
   gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);

  gspca_frame_add(gspca_dev, FIRST_PACKET, sof, len_after_sof);
 }
}
