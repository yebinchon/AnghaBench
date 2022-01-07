
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FIRST_EXTERNAL_VECTOR ;
 unsigned int LGUEST_TRAP_ENTRY ;
 int could_be_syscall (unsigned int) ;

__attribute__((used)) static bool direct_trap(unsigned int num)
{




 if (num >= FIRST_EXTERNAL_VECTOR && !could_be_syscall(num))
  return 0;







 return num != 14 && num != 13 && num != 7 &&
   num != 6 && num != LGUEST_TRAP_ENTRY;
}
