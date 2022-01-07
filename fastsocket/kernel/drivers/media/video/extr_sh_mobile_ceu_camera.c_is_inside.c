
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {scalar_t__ left; scalar_t__ top; scalar_t__ width; scalar_t__ height; } ;



__attribute__((used)) static bool is_inside(struct v4l2_rect *r1, struct v4l2_rect *r2)
{
 return r1->left > r2->left || r1->top > r2->top ||
  r1->left + r1->width < r2->left + r2->width ||
  r1->top + r1->height < r2->top + r2->height;
}
