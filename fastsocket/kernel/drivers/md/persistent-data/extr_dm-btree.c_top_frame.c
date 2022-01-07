
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int dummy; } ;
struct del_stack {scalar_t__ top; struct frame* spine; } ;


 int DMERR (char*) ;
 int EINVAL ;

__attribute__((used)) static int top_frame(struct del_stack *s, struct frame **f)
{
 if (s->top < 0) {
  DMERR("btree deletion stack empty");
  return -EINVAL;
 }

 *f = s->spine + s->top;

 return 0;
}
