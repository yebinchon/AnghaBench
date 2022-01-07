
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sversion; } ;
struct parisc_device {int hw_path; int aux_irq; TYPE_1__ id; int irq; } ;


 int gsc_asic_assign_irq (void*,int,int *) ;

__attribute__((used)) static void asp_choose_irq(struct parisc_device *dev, void *ctrl)
{
 int irq;

 switch (dev->id.sversion) {
 case 0x71: irq = 9; break;
 case 0x72: irq = 8; break;
 case 0x73: irq = 1; break;
 case 0x74: irq = 7; break;
 case 0x75: irq = (dev->hw_path == 4) ? 5 : 6; break;
 case 0x76: irq = 10; break;
 case 0x77: irq = 11; break;
 case 0x7a: irq = 13; break;
 case 0x7b: irq = 13; break;
 case 0x7c: irq = 3; break;
 case 0x7d: irq = 4; break;
 case 0x7f: irq = 13; break;
 default: return;
 }

 gsc_asic_assign_irq(ctrl, irq, &dev->irq);

 switch (dev->id.sversion) {
 case 0x73: irq = 2; break;
 case 0x76: irq = 0; break;
 default: return;
 }

 gsc_asic_assign_irq(ctrl, irq, &dev->aux_irq);
}
