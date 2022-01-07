
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ia64_tpa (unsigned long) ;
 int vmcoreinfo_note ;

unsigned long paddr_vmcoreinfo_note(void)
{
 return ia64_tpa((unsigned long)(char *)&vmcoreinfo_note);
}
