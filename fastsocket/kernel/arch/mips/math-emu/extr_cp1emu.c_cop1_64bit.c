
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cp0_status; } ;


 int ST0_FR ;
 int TIF_32BIT_REGS ;
 scalar_t__ cpu_has_fpu ;
 int test_thread_flag (int ) ;

__attribute__((used)) static inline int cop1_64bit(struct pt_regs *xcp)
{
 if (cpu_has_fpu)
  return xcp->cp0_status & ST0_FR;



 return 0;

}
