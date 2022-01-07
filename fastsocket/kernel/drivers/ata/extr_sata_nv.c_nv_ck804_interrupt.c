
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_host {int lock; scalar_t__* iomap; } ;
typedef int irqreturn_t ;


 scalar_t__ NV_INT_STATUS_CK804 ;
 size_t NV_MMIO_BAR ;
 int nv_do_interrupt (struct ata_host*,int ) ;
 int readb (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t nv_ck804_interrupt(int irq, void *dev_instance)
{
 struct ata_host *host = dev_instance;
 u8 irq_stat;
 irqreturn_t ret;

 spin_lock(&host->lock);
 irq_stat = readb(host->iomap[NV_MMIO_BAR] + NV_INT_STATUS_CK804);
 ret = nv_do_interrupt(host, irq_stat);
 spin_unlock(&host->lock);

 return ret;
}
