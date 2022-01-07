
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ks8842_adapter {scalar_t__ hw_addr; } ;


 int iowrite8 (int ,scalar_t__) ;
 int ks8842_select_bank (struct ks8842_adapter*,int ) ;

__attribute__((used)) static inline void ks8842_write8(struct ks8842_adapter *adapter, u16 bank,
 u8 value, int offset)
{
 ks8842_select_bank(adapter, bank);
 iowrite8(value, adapter->hw_addr + offset);
}
