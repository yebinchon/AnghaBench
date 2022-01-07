
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long addr; unsigned long data; } ;


 unsigned long CPLB_DIRTY ;
 unsigned long CPLB_L1_AOW ;
 unsigned long CPLB_L1_CHBL ;
 unsigned long CPLB_SUPV_WR ;
 unsigned long CPLB_VALID ;
 unsigned long CPLB_WT ;
 scalar_t__ DCPLB_ADDR0 ;
 scalar_t__ DCPLB_DATA0 ;
 unsigned long L2_DMEMORY ;
 unsigned long L2_LENGTH ;
 unsigned long L2_START ;
 scalar_t__ PAGE_SIZE ;
 unsigned long PAGE_SIZE_4KB ;
 int _disable_dcplb () ;
 int _enable_dcplb () ;
 int bfin_write32 (scalar_t__,unsigned long) ;
 unsigned long** current_rwx_mask ;
 TYPE_1__** dcplb_tbl ;
 int first_mask_dcplb ;
 int first_switched_dcplb ;
 int local_irq_restore_hw (unsigned long) ;
 int local_irq_save_hw (unsigned long) ;

void set_mask_dcplbs(unsigned long *masks, unsigned int cpu)
{
 int i;
 unsigned long addr = (unsigned long)masks;
 unsigned long d_data;
 unsigned long flags;

 if (!masks) {
  current_rwx_mask[cpu] = masks;
  return;
 }

 local_irq_save_hw(flags);
 current_rwx_mask[cpu] = masks;

 if (L2_LENGTH && addr >= L2_START && addr < L2_START + L2_LENGTH) {
  addr = L2_START;
  d_data = L2_DMEMORY;
 } else {
  d_data = CPLB_SUPV_WR | CPLB_VALID | CPLB_DIRTY | PAGE_SIZE_4KB;






 }

 _disable_dcplb();
 for (i = first_mask_dcplb; i < first_switched_dcplb; i++) {
  dcplb_tbl[cpu][i].addr = addr;
  dcplb_tbl[cpu][i].data = d_data;
  bfin_write32(DCPLB_DATA0 + i * 4, d_data);
  bfin_write32(DCPLB_ADDR0 + i * 4, addr);
  addr += PAGE_SIZE;
 }
 _enable_dcplb();
 local_irq_restore_hw(flags);
}
