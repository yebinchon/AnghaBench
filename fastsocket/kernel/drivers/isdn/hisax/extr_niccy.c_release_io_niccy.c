
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ isac_ale; scalar_t__ isac; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ niccy; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;


 scalar_t__ NICCY_PCI ;
 scalar_t__ PCI_IRQ_CTRL_REG ;
 int PCI_IRQ_DISABLE ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void release_io_niccy(struct IsdnCardState *cs)
{
 if (cs->subtyp == NICCY_PCI) {
  int val;

  val = inl(cs->hw.niccy.cfg_reg + PCI_IRQ_CTRL_REG);
  val &= PCI_IRQ_DISABLE;
  outl(val, cs->hw.niccy.cfg_reg + PCI_IRQ_CTRL_REG);
  release_region(cs->hw.niccy.cfg_reg, 0x40);
  release_region(cs->hw.niccy.isac, 4);
 } else {
  release_region(cs->hw.niccy.isac, 2);
  release_region(cs->hw.niccy.isac_ale, 2);
 }
}
