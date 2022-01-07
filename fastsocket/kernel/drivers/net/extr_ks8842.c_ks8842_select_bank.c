
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks8842_adapter {scalar_t__ hw_addr; } ;


 scalar_t__ REG_SELECT_BANK ;
 int iowrite16 (int ,scalar_t__) ;

__attribute__((used)) static inline void ks8842_select_bank(struct ks8842_adapter *adapter, u16 bank)
{
 iowrite16(bank, adapter->hw_addr + REG_SELECT_BANK);
}
