
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_frame {struct stack_frame* next_frame; int return_address; } ;
typedef int bufhead ;


 int VERIFY_READ ;
 scalar_t__ __copy_from_user_inatomic (struct stack_frame*,struct stack_frame*,int) ;
 int access_ok (int ,struct stack_frame*,int) ;
 int oprofile_add_trace (int ) ;

__attribute__((used)) static struct stack_frame *dump_user_backtrace(struct stack_frame *head)
{
 struct stack_frame bufhead[2];


 if (!access_ok(VERIFY_READ, head, sizeof(bufhead)))
  return ((void*)0);
 if (__copy_from_user_inatomic(bufhead, head, sizeof(bufhead)))
  return ((void*)0);

 oprofile_add_trace(bufhead[0].return_address);



 if (head >= bufhead[0].next_frame)
  return ((void*)0);

 return bufhead[0].next_frame;
}
