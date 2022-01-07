
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {scalar_t__ field_count; struct vbi_data* vbi; } ;
struct vbi_data {int vbi_size; int copied; scalar_t__ front; } ;


 int copy_vbi_data (struct vbi_data*,char*,unsigned int) ;
 int copy_video_data (struct video_data*,char*,unsigned int) ;
 int submit_frame (scalar_t__) ;

__attribute__((used)) static inline void copy_vbi_video_data(struct video_data *video,
    char *src, unsigned int count)
{
 struct vbi_data *vbi = video->vbi;
 unsigned int vbi_delta = (vbi->vbi_size / 2) - vbi->copied;

 if (vbi_delta >= count) {
  copy_vbi_data(vbi, src, count);
 } else {
  if (vbi_delta) {
   copy_vbi_data(vbi, src, vbi_delta);


   if (vbi->front && video->field_count)
    submit_frame(vbi->front);
  }
  copy_video_data(video, src + vbi_delta, count - vbi_delta);
 }
}
