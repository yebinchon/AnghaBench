
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int sizeimage; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct video_data {int lines_size; int lines_copied; int prev_left; int field_count; TYPE_2__ context; struct vbi_data* vbi; } ;
struct vbi_data {int vbi_size; int copied; } ;


 int copy_video_data (struct video_data*,char*,int) ;
 int end_field (struct video_data*) ;
 int init_copy (struct video_data*,int) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void check_trailer(struct video_data *video, char *src, int count)
{
 struct vbi_data *vbi = video->vbi;
 int offset;
 char *buf;

 offset = (video->context.pix.sizeimage / 2 + vbi->vbi_size / 2)
  - (vbi->copied + video->lines_size * video->lines_copied);
 if (video->prev_left)
  offset -= (video->lines_size - video->prev_left);

 if (offset > count || offset <= 0)
  goto short_package;

 buf = src + offset;


 if (!strncmp(buf, "VFHS", 4)) {
  int field_num = *((u32 *)(buf + 12));

  if ((field_num & 1) ^ video->field_count) {
   init_copy(video, video->field_count);
   return;
  }
  copy_video_data(video, src, offset);
 }
short_package:
 end_field(video);
}
