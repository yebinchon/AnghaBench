
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dummy; } ;
struct ipath_devdata {int ipath_intconfig; } ;
struct ht_irq_msg {int address_lo; scalar_t__ address_hi; } ;


 int ipath_ht_intconfig (struct ipath_devdata*) ;
 struct ipath_devdata* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void ipath_ht_irq_update(struct pci_dev *dev, int irq,
    struct ht_irq_msg *msg)
{
 struct ipath_devdata *dd = pci_get_drvdata(dev);
 u64 prev_intconfig = dd->ipath_intconfig;

 dd->ipath_intconfig = msg->address_lo;
 dd->ipath_intconfig |= ((u64) msg->address_hi) << 32;







 if (prev_intconfig)
  ipath_ht_intconfig(dd);
}
