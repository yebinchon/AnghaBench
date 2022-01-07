
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_info {int display_width; int display_byte_stride; int bytes_per_pixel; scalar_t__ video_rbase; int set_osd_coords_y; int set_osd_coords_x; } ;
struct ivtv_osd_coords {int pixel_stride; int y; int x; int lines; scalar_t__ offset; } ;
struct ivtv {struct osd_info* osd_info; } ;


 int CX2341X_OSD_SET_OSD_COORDS ;
 int ivtv_vapi (struct ivtv*,int ,int,scalar_t__,int,int ,int ,int ) ;

__attribute__((used)) static int ivtvfb_set_osd_coords(struct ivtv *itv, const struct ivtv_osd_coords *osd)
{
 struct osd_info *oi = itv->osd_info;

 oi->display_width = osd->pixel_stride;
 oi->display_byte_stride = osd->pixel_stride * oi->bytes_per_pixel;
 oi->set_osd_coords_x += osd->x;
 oi->set_osd_coords_y = osd->y;

 return ivtv_vapi(itv, CX2341X_OSD_SET_OSD_COORDS, 5,
   osd->offset + oi->video_rbase,
   osd->pixel_stride,
   osd->lines, osd->x, osd->y);
}
