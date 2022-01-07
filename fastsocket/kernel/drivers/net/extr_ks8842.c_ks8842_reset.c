
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8842_adapter {scalar_t__ hw_addr; } ;


 scalar_t__ REG_SELECT_BANK ;
 scalar_t__ REG_TIMB_RST ;
 int iowrite16 (int,scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static void ks8842_reset(struct ks8842_adapter *adapter)
{







 iowrite16(32, adapter->hw_addr + REG_SELECT_BANK);
 iowrite32(0x1, adapter->hw_addr + REG_TIMB_RST);
 msleep(20);
}
