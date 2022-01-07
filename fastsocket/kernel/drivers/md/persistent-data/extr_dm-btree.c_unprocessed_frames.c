
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct del_stack {scalar_t__ top; } ;



__attribute__((used)) static int unprocessed_frames(struct del_stack *s)
{
 return s->top >= 0;
}
