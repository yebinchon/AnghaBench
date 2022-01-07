
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* ste; } ;
typedef TYPE_1__ pmd_t ;


 int BUG_ON (unsigned long) ;
 int PME_SIZE ;
 scalar_t__ __frv_PT_SIZE ;
 int frv_dcache_writeback (unsigned long,unsigned long) ;
 int memset (unsigned long*,int ,int) ;
 int xAMPRx_SS ;

void __set_pmd(pmd_t *pmdptr, unsigned long pmd)
{
 unsigned long *__ste_p = pmdptr->ste;
 int loop;

 if (!pmd) {
  memset(__ste_p, 0, PME_SIZE);
 }
 else {
  BUG_ON(pmd & (0x3f00 | xAMPRx_SS | 0xe));

  for (loop = PME_SIZE; loop > 0; loop -= 4) {
   *__ste_p++ = pmd;
   pmd += __frv_PT_SIZE;
  }
 }

 frv_dcache_writeback((unsigned long) pmdptr, (unsigned long) (pmdptr + 1));
}
