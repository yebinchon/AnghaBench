
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvme_dev {TYPE_1__* pci_dev; TYPE_2__* bar; } ;
struct TYPE_4__ {int csts; } ;
struct TYPE_3__ {int dev; } ;


 int EINTR ;
 int ENODEV ;
 int HZ ;
 int NVME_CAP_TIMEOUT (int ) ;
 int NVME_CSTS_RDY ;
 int current ;
 int dev_err (int *,char*) ;
 scalar_t__ fatal_signal_pending (int ) ;
 int jiffies ;
 int msleep (int) ;
 int readl (int *) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static int nvme_wait_ready(struct nvme_dev *dev, u64 cap, bool enabled)
{
 unsigned long timeout;
 u32 bit = enabled ? NVME_CSTS_RDY : 0;

 timeout = ((NVME_CAP_TIMEOUT(cap) + 1) * HZ / 2) + jiffies;

 while ((readl(&dev->bar->csts) & NVME_CSTS_RDY) != bit) {
  msleep(100);
  if (fatal_signal_pending(current))
   return -EINTR;
  if (time_after(jiffies, timeout)) {
   dev_err(&dev->pci_dev->dev,
    "Device not ready; aborting initialisation\n");
   return -ENODEV;
  }
 }

 return 0;
}
