
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hw_type; } ;
struct parisc_device {TYPE_1__ id; } ;
struct gsc_fixup_struct {int ctrl; int (* choose_irq ) (struct parisc_device*,int ) ;} ;
struct device {int dummy; } ;


 scalar_t__ HPHW_FAULTY ;
 int gsc_fixup_irqs (struct parisc_device*,int ,int (*) (struct parisc_device*,int )) ;
 int stub1 (struct parisc_device*,int ) ;
 struct parisc_device* to_parisc_device (struct device*) ;

__attribute__((used)) static int gsc_fixup_irqs_callback(struct device *dev, void *data)
{
 struct parisc_device *padev = to_parisc_device(dev);
 struct gsc_fixup_struct *gf = data;



 if (padev->id.hw_type == HPHW_FAULTY)
  gsc_fixup_irqs(padev, gf->ctrl, gf->choose_irq);
 gf->choose_irq(padev, gf->ctrl);

 return 0;
}
