
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_data {int field_count; char* dst; int lines_size; TYPE_1__* vbi; scalar_t__ prev_left; scalar_t__ lines_copied; struct front_face* front; } ;
struct front_face {int curr_frame; } ;
struct TYPE_2__ {scalar_t__ copied; } ;


 scalar_t__ videobuf_to_vmalloc (int ) ;

__attribute__((used)) static void init_copy(struct video_data *video, bool index)
{
 struct front_face *front = video->front;

 video->field_count = index;
 video->lines_copied = 0;
 video->prev_left = 0 ;
 video->dst = (char *)videobuf_to_vmalloc(front->curr_frame)
     + index * video->lines_size;
 video->vbi->copied = 0;
}
