
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_tail {struct frame_tail* fp; int lr; } ;
typedef int buftail ;


 int VERIFY_READ ;
 scalar_t__ __copy_from_user_inatomic (struct frame_tail*,struct frame_tail*,int) ;
 int access_ok (int ,struct frame_tail*,int) ;
 int oprofile_add_trace (int ) ;

__attribute__((used)) static struct frame_tail* user_backtrace(struct frame_tail *tail)
{
 struct frame_tail buftail[2];


 if (!access_ok(VERIFY_READ, tail, sizeof(buftail)))
  return ((void*)0);
 if (__copy_from_user_inatomic(buftail, tail, sizeof(buftail)))
  return ((void*)0);

 oprofile_add_trace(buftail[0].lr);



 if (tail >= buftail[0].fp)
  return ((void*)0);

 return buftail[0].fp-1;
}
