
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 scalar_t__ NETJET_IRQMASK1 ;
 int TJ_AMD_IRQ ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void
enpci_setIrqMask(struct IsdnCardState *cs, unsigned char val) {
        if (!val)
         outb(0x00, cs->hw.njet.base+NETJET_IRQMASK1);
        else
         outb(TJ_AMD_IRQ, cs->hw.njet.base+NETJET_IRQMASK1);
}
