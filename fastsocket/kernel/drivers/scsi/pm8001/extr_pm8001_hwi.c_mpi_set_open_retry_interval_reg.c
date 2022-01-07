
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int lock; } ;


 int OPEN_RETRY_INTERVAL_PHY_0_3_OFFSET ;
 int OPEN_RETRY_INTERVAL_PHY_0_3_SHIFT_ADDR ;
 int OPEN_RETRY_INTERVAL_PHY_4_7_OFFSET ;
 int OPEN_RETRY_INTERVAL_PHY_4_7_SHIFT_ADDR ;
 int OPEN_RETRY_INTERVAL_REG_MASK ;
 int pm8001_bar4_shift (struct pm8001_hba_info*,int) ;
 int pm8001_cw32 (struct pm8001_hba_info*,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mpi_set_open_retry_interval_reg(struct pm8001_hba_info *pm8001_ha,
         u32 interval)
{
 u32 offset;
 u32 value;
 u32 i;
 unsigned long flags;







 value = interval & 0x0000FFFF;
 spin_lock_irqsave(&pm8001_ha->lock, flags);

 if (-1 == pm8001_bar4_shift(pm8001_ha,
        0x00030000)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  return;
 }
 for (i = 0; i < 4; i++) {
  offset = 0x30B4 + 0x4000 * i;
  pm8001_cw32(pm8001_ha, 2, offset, value);
 }

 if (-1 == pm8001_bar4_shift(pm8001_ha,
        0x00040000)) {
  spin_unlock_irqrestore(&pm8001_ha->lock, flags);
  return;
 }
 for (i = 4; i < 8; i++) {
  offset = 0x30B4 + 0x4000 * (i-4);
  pm8001_cw32(pm8001_ha, 2, offset, value);
 }

 pm8001_bar4_shift(pm8001_ha, 0x0);
 spin_unlock_irqrestore(&pm8001_ha->lock, flags);
 return;
}
