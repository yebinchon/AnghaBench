
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct velocity_info {int* mib_counter; TYPE_1__* mac_regs; } ;
struct TYPE_2__ {int MIBData; int MIBCR; } ;


 scalar_t__ BYTE_REG_BITS_IS_ON (int ,int *) ;
 int BYTE_REG_BITS_ON (int ,int *) ;
 int HW_MIB_SIZE ;
 int MIBCR_MIBFLSH ;
 int MIBCR_MPTRINI ;
 int readl (int *) ;

__attribute__((used)) static inline void velocity_update_hw_mibs(struct velocity_info *vptr)
{
 u32 tmp;
 int i;
 BYTE_REG_BITS_ON(MIBCR_MIBFLSH, &(vptr->mac_regs->MIBCR));

 while (BYTE_REG_BITS_IS_ON(MIBCR_MIBFLSH, &(vptr->mac_regs->MIBCR)));

 BYTE_REG_BITS_ON(MIBCR_MPTRINI, &(vptr->mac_regs->MIBCR));
 for (i = 0; i < HW_MIB_SIZE; i++) {
  tmp = readl(&(vptr->mac_regs->MIBData)) & 0x00FFFFFFUL;
  vptr->mib_counter[i] += tmp;
 }
}
