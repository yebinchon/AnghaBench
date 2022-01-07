
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long STACK_FRAME_OVERHEAD ;
 int THREAD_SIZE ;
 int current ;
 int validate_sp (unsigned long,int ,unsigned long) ;

__attribute__((used)) static int valid_next_sp(unsigned long sp, unsigned long prev_sp)
{
 if (sp & 0xf)
  return 0;
 if (!validate_sp(sp, current, STACK_FRAME_OVERHEAD))
  return 0;
 if (sp >= prev_sp + STACK_FRAME_OVERHEAD)
  return 1;




 if ((sp & ~(THREAD_SIZE - 1)) != (prev_sp & ~(THREAD_SIZE - 1)))
  return 1;
 return 0;
}
