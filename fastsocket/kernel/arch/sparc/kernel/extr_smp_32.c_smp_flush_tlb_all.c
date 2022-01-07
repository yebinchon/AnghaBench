
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smpfunc_t ;


 scalar_t__ BTFIXUP_CALL (int (*) ()) ;
 int local_flush_tlb_all () ;
 int xc0 (int ) ;

void smp_flush_tlb_all(void)
{
 xc0((smpfunc_t) BTFIXUP_CALL(local_flush_tlb_all));
 local_flush_tlb_all();
}
