
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct v4l2_rect {int height; int width; int top; int left; } ;


 int dbgarg2 (char*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void dbgrect(struct video_device *vfd, char *s,
       struct v4l2_rect *r)
{
 dbgarg2("%sRect start at %dx%d, size=%dx%d\n", s, r->left, r->top,
      r->width, r->height);
}
