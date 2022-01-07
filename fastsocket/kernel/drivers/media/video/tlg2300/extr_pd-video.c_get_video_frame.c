
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {int dummy; } ;
struct front_face {int dummy; } ;


 int get_frame (struct front_face*,int*) ;
 int init_copy (struct video_data*,int ) ;

__attribute__((used)) static bool get_video_frame(struct front_face *front, struct video_data *video)
{
 int need_init = 0;
 bool ret = 1;

 ret = get_frame(front, &need_init);
 if (ret && need_init)
  init_copy(video, 0);
 return ret;
}
