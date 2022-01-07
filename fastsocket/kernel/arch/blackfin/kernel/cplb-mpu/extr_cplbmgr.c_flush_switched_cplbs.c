
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 scalar_t__ DCPLB_DATA0 ;
 scalar_t__ ICPLB_DATA0 ;
 int MAX_CPLBS ;
 int _disable_dcplb () ;
 int _disable_icplb () ;
 int _enable_dcplb () ;
 int _enable_icplb () ;
 int bfin_write32 (scalar_t__,int ) ;
 TYPE_2__** dcplb_tbl ;
 int first_switched_dcplb ;
 int first_switched_icplb ;
 TYPE_1__** icplb_tbl ;
 int local_irq_restore_hw (unsigned long) ;
 int local_irq_save_hw (unsigned long) ;
 int * nr_cplb_flush ;

void flush_switched_cplbs(unsigned int cpu)
{
 int i;
 unsigned long flags;

 nr_cplb_flush[cpu]++;

 local_irq_save_hw(flags);
 _disable_icplb();
 for (i = first_switched_icplb; i < MAX_CPLBS; i++) {
  icplb_tbl[cpu][i].data = 0;
  bfin_write32(ICPLB_DATA0 + i * 4, 0);
 }
 _enable_icplb();

 _disable_dcplb();
 for (i = first_switched_dcplb; i < MAX_CPLBS; i++) {
  dcplb_tbl[cpu][i].data = 0;
  bfin_write32(DCPLB_DATA0 + i * 4, 0);
 }
 _enable_dcplb();
 local_irq_restore_hw(flags);

}
