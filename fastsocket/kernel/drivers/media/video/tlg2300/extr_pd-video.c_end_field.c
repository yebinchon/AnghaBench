
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {int field_count; int front; } ;


 int init_copy (struct video_data*,int) ;
 int submit_frame (int ) ;

__attribute__((used)) static void end_field(struct video_data *video)
{

 if (1 == video->field_count)
  submit_frame(video->front);
 else
  init_copy(video, 1);
}
