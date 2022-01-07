
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 int force_user_fault (unsigned long,int ) ;

void window_underflow_fault(unsigned long sp)
{
 if(((sp + 0x38) & PAGE_MASK) != (sp & PAGE_MASK))
  force_user_fault(sp + 0x38, 0);
 force_user_fault(sp, 0);
}
