
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct bcma_drv_pci {TYPE_2__* core; } ;
struct TYPE_3__ {int id; } ;
struct bcma_bus {TYPE_1__ chipinfo; } ;
struct TYPE_4__ {int io_addr; struct bcma_bus* bus; } ;


 int bcma_core_enable (TYPE_2__*,int ) ;
 int mips_busprobe32 (int ,int ) ;

bool bcma_core_pci_is_in_hostmode(struct bcma_drv_pci *pc)
{
 struct bcma_bus *bus = pc->core->bus;
 u16 chipid_top;
 u32 tmp;

 chipid_top = (bus->chipinfo.id & 0xFF00);
 if (chipid_top != 0x4700 &&
     chipid_top != 0x5300)
  return 0;

 bcma_core_enable(pc->core, 0);

 return !mips_busprobe32(tmp, pc->core->io_addr);
}
