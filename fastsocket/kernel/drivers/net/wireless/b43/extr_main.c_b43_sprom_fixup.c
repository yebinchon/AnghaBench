
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int board_rev; int boardflags_lo; } ;
struct TYPE_3__ {scalar_t__ vendor; int type; } ;
struct ssb_bus {int chip_id; scalar_t__ bustype; TYPE_2__ sprom; struct pci_dev* host_pci; TYPE_1__ boardinfo; } ;
struct pci_dev {int dummy; } ;


 int ASUSTEK ;
 int B43_BFL_BTCOEXIST ;
 int B43_BFL_PACTRL ;
 int BROADCOM ;
 int DELL ;
 int HP ;
 scalar_t__ IS_PDEV (struct pci_dev*,int ,int,int ,int) ;
 int LINKSYS ;
 int MOTOROLA ;
 scalar_t__ PCI_VENDOR_ID_APPLE ;
 scalar_t__ SSB_BOARDVENDOR_DELL ;
 scalar_t__ SSB_BUSTYPE_PCI ;

__attribute__((used)) static void b43_sprom_fixup(struct ssb_bus *bus)
{
 struct pci_dev *pdev;


 if (bus->boardinfo.vendor == SSB_BOARDVENDOR_DELL &&
     bus->chip_id == 0x4301 && bus->sprom.board_rev == 0x74)
  bus->sprom.boardflags_lo |= B43_BFL_BTCOEXIST;
 if (bus->boardinfo.vendor == PCI_VENDOR_ID_APPLE &&
     bus->boardinfo.type == 0x4E && bus->sprom.board_rev > 0x40)
  bus->sprom.boardflags_lo |= B43_BFL_PACTRL;
 if (bus->bustype == SSB_BUSTYPE_PCI) {
  pdev = bus->host_pci;
  if (IS_PDEV(pdev, BROADCOM, 0x4318, ASUSTEK, 0x100F) ||
      IS_PDEV(pdev, BROADCOM, 0x4320, DELL, 0x0003) ||
      IS_PDEV(pdev, BROADCOM, 0x4320, HP, 0x12f8) ||
      IS_PDEV(pdev, BROADCOM, 0x4320, LINKSYS, 0x0015) ||
      IS_PDEV(pdev, BROADCOM, 0x4320, LINKSYS, 0x0014) ||
      IS_PDEV(pdev, BROADCOM, 0x4320, LINKSYS, 0x0013) ||
      IS_PDEV(pdev, BROADCOM, 0x4320, MOTOROLA, 0x7010))
   bus->sprom.boardflags_lo &= ~B43_BFL_BTCOEXIST;
 }
}
