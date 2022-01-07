
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct pvr2_hdw {int unit_number; } ;


 int PVR_NUM ;
 int* video_std ;

__attribute__((used)) static v4l2_std_id get_default_standard(struct pvr2_hdw *hdw)
{
 int unit_number = hdw->unit_number;
 int tp = 0;
 if ((unit_number >= 0) && (unit_number < PVR_NUM)) {
  tp = video_std[unit_number];
  if (tp) return tp;
 }
 return 0;
}
