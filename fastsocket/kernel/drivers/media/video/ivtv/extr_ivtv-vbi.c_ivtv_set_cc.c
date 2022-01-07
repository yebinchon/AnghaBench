
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbi_cc {int * even; int * odd; } ;
struct v4l2_sliced_vbi_data {int field; int line; int * data; int id; } ;
struct ivtv {int v4l2_cap; } ;


 int IVTV_HW_SAA7127 ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_SLICED_CAPTION_525 ;
 int ivtv_call_hw (struct ivtv*,int ,int ,int ,struct v4l2_sliced_vbi_data*) ;
 int s_vbi_data ;
 int vbi ;

__attribute__((used)) static void ivtv_set_cc(struct ivtv *itv, int mode, const struct vbi_cc *cc)
{
 struct v4l2_sliced_vbi_data data;

 if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
  return;
 data.id = V4L2_SLICED_CAPTION_525;
 data.field = 0;
 data.line = (mode & 1) ? 21 : 0;
 data.data[0] = cc->odd[0];
 data.data[1] = cc->odd[1];
 ivtv_call_hw(itv, IVTV_HW_SAA7127, vbi, s_vbi_data, &data);
 data.field = 1;
 data.line = (mode & 2) ? 21 : 0;
 data.data[0] = cc->even[0];
 data.data[1] = cc->even[1];
 ivtv_call_hw(itv, IVTV_HW_SAA7127, vbi, s_vbi_data, &data);
}
