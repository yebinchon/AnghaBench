
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int v4l_minor_number_video; int v4l_minor_number_vbi; int v4l_minor_number_radio; } ;
typedef enum pvr2_v4l_type { ____Placeholder_pvr2_v4l_type } pvr2_v4l_type ;






void pvr2_hdw_v4l_store_minor_number(struct pvr2_hdw *hdw,
         enum pvr2_v4l_type index,int v)
{
 switch (index) {
 case 128: hdw->v4l_minor_number_video = v;
 case 129: hdw->v4l_minor_number_vbi = v;
 case 130: hdw->v4l_minor_number_radio = v;
 default: break;
 }
}
