
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GLOBAL_MMR_PHYS_ADDR (int,int ) ;
 int SH_IPI_INT ;
 int SH_IPI_INT_BASE_SHFT ;
 long SH_IPI_INT_IDX_SHFT ;
 long SH_IPI_INT_PID_SHFT ;
 unsigned long SH_IPI_INT_SEND_SHFT ;
 long SH_IPI_INT_TYPE_SHFT ;
 scalar_t__ enable_shub_wars_1_1 () ;
 int mb () ;
 int pio_phys_write_mmr (long volatile*,long) ;
 int sn2_global_ptc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_piowc () ;

void sn_send_IPI_phys(int nasid, long physid, int vector, int delivery_mode)
{
 long val;
 unsigned long flags = 0;
 volatile long *p;

 p = (long *)GLOBAL_MMR_PHYS_ADDR(nasid, SH_IPI_INT);
 val = (1UL << SH_IPI_INT_SEND_SHFT) |
     (physid << SH_IPI_INT_PID_SHFT) |
     ((long)delivery_mode << SH_IPI_INT_TYPE_SHFT) |
     ((long)vector << SH_IPI_INT_IDX_SHFT) |
     (0x000feeUL << SH_IPI_INT_BASE_SHFT);

 mb();
 if (enable_shub_wars_1_1()) {
  spin_lock_irqsave(&sn2_global_ptc_lock, flags);
 }
 pio_phys_write_mmr(p, val);
 if (enable_shub_wars_1_1()) {
  wait_piowc();
  spin_unlock_irqrestore(&sn2_global_ptc_lock, flags);
 }

}
