
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {int addr; int data; } ;


 TYPE_1__* mv64x60_pci_cfgio ;
 int out_le32 (int*,int) ;

void mv64x60_cfg_write(u8 *bridge_base, u8 hose, u8 bus, u8 devfn, u8 offset,
  u32 val)
{
 out_le32((u32 *)(bridge_base + mv64x60_pci_cfgio[hose].addr),
   (1 << 31) | (bus << 16) | (devfn << 8) | offset);
 out_le32((u32 *)(bridge_base + mv64x60_pci_cfgio[hose].data), val);
}
