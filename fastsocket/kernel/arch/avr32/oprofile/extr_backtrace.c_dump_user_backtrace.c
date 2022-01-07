
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_head {struct frame_head* fp; int lr; } ;
typedef int bufhead ;


 int VERIFY_READ ;
 scalar_t__ __copy_from_user_inatomic (struct frame_head*,struct frame_head*,int) ;
 int access_ok (int ,struct frame_head*,int) ;
 int oprofile_add_trace (int ) ;

__attribute__((used)) static struct frame_head *dump_user_backtrace(struct frame_head *head)
{
 struct frame_head bufhead[2];


 if (!access_ok(VERIFY_READ, head, sizeof(bufhead)))
  return ((void*)0);
 if (__copy_from_user_inatomic(bufhead, head, sizeof(bufhead)))
  return ((void*)0);

 oprofile_add_trace(bufhead[0].lr);



 if (bufhead[0].fp <= head)
  return ((void*)0);

 return bufhead[0].fp;
}
