
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 unsigned long CONTEXTS_NUM ;
 int clear_context (unsigned long) ;
 struct mm_struct** ctx_alloc ;
 int ctx_avail ;
 int panic (char*) ;

unsigned long get_free_context(struct mm_struct *mm)
{
 unsigned long new = 1;
 static unsigned char next_to_die = 1;

 if(!ctx_avail) {

  new = next_to_die;
  clear_context(new);
  next_to_die = (next_to_die + 1) & 0x7;
  if(!next_to_die)
   next_to_die++;
 } else {
  while(new < CONTEXTS_NUM) {
   if(ctx_alloc[new])
    new++;
   else
    break;
  }

  if(new == CONTEXTS_NUM)
   panic("get_free_context: failed to find free context");
 }

 ctx_alloc[new] = mm;
 ctx_avail--;

 return new;
}
