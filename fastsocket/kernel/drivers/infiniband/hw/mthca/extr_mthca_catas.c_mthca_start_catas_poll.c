
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long data; scalar_t__ expires; int function; } ;
struct TYPE_4__ {int addr; int size; TYPE_2__ timer; int list; int * map; } ;
struct mthca_dev {TYPE_1__ catas_err; int pdev; } ;
typedef scalar_t__ phys_addr_t ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MTHCA_CATAS_POLL_INTERVAL ;
 int add_timer (TYPE_2__*) ;
 int init_timer (TYPE_2__*) ;
 int * ioremap (scalar_t__,int) ;
 scalar_t__ jiffies ;
 int mthca_warn (struct mthca_dev*,char*,unsigned long long,int) ;
 int pci_resource_len (int ,int ) ;
 scalar_t__ pci_resource_start (int ,int ) ;
 int poll_catas ;

void mthca_start_catas_poll(struct mthca_dev *dev)
{
 phys_addr_t addr;

 init_timer(&dev->catas_err.timer);
 dev->catas_err.map = ((void*)0);

 addr = pci_resource_start(dev->pdev, 0) +
  ((pci_resource_len(dev->pdev, 0) - 1) &
   dev->catas_err.addr);

 dev->catas_err.map = ioremap(addr, dev->catas_err.size * 4);
 if (!dev->catas_err.map) {
  mthca_warn(dev, "couldn't map catastrophic error region "
      "at 0x%llx/0x%x\n", (unsigned long long) addr,
      dev->catas_err.size * 4);
  return;
 }

 dev->catas_err.timer.data = (unsigned long) dev;
 dev->catas_err.timer.function = poll_catas;
 dev->catas_err.timer.expires = jiffies + MTHCA_CATAS_POLL_INTERVAL;
 INIT_LIST_HEAD(&dev->catas_err.list);
 add_timer(&dev->catas_err.timer);
}
