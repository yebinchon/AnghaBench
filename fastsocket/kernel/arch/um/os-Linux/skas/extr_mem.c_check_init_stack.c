
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_id {scalar_t__ stack; } ;



__attribute__((used)) static inline unsigned long *check_init_stack(struct mm_id * mm_idp,
           unsigned long *stack)
{
 if (stack == ((void*)0)) {
  stack = (unsigned long *) mm_idp->stack + 2;
  *stack = 0;
 }
 return stack;
}
