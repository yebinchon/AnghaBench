
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {scalar_t__ ipath_intconfig; scalar_t__ ipath_irq; } ;


 int free_irq (scalar_t__,struct ipath_devdata*) ;
 int ht_destroy_irq (scalar_t__) ;

__attribute__((used)) static void ipath_ht_free_irq(struct ipath_devdata *dd)
{
 free_irq(dd->ipath_irq, dd);
 ht_destroy_irq(dd->ipath_irq);
 dd->ipath_irq = 0;
 dd->ipath_intconfig = 0;
}
