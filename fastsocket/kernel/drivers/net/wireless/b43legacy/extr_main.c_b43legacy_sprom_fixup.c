
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int board_rev; int boardflags_lo; } ;
struct TYPE_3__ {scalar_t__ vendor; int type; } ;
struct ssb_bus {TYPE_2__ sprom; TYPE_1__ boardinfo; } ;


 int B43legacy_BFL_PACTRL ;
 scalar_t__ PCI_VENDOR_ID_APPLE ;

__attribute__((used)) static void b43legacy_sprom_fixup(struct ssb_bus *bus)
{

 if (bus->boardinfo.vendor == PCI_VENDOR_ID_APPLE &&
     bus->boardinfo.type == 0x4E &&
     bus->sprom.board_rev > 0x40)
  bus->sprom.boardflags_lo |= B43legacy_BFL_PACTRL;
}
