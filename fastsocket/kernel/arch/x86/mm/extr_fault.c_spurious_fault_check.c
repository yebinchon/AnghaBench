
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 unsigned long PF_INSTR ;
 unsigned long PF_WRITE ;
 int pte_exec (int ) ;
 int pte_write (int ) ;

__attribute__((used)) static int spurious_fault_check(unsigned long error_code, pte_t *pte)
{
 if ((error_code & PF_WRITE) && !pte_write(*pte))
  return 0;

 if ((error_code & PF_INSTR) && !pte_exec(*pte))
  return 0;

 return 1;
}
