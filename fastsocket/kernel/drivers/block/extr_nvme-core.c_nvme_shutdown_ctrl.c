
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvme_dev {TYPE_1__* pci_dev; TYPE_2__* bar; } ;
struct TYPE_4__ {int csts; int cc; } ;
struct TYPE_3__ {int dev; } ;


 int EINTR ;
 int ENODEV ;
 int HZ ;
 int NVME_CC_SHN_MASK ;
 int NVME_CC_SHN_NORMAL ;
 int NVME_CSTS_SHST_CMPLT ;
 int NVME_CSTS_SHST_MASK ;
 int current ;
 int dev_err (int *,char*) ;
 scalar_t__ fatal_signal_pending (int ) ;
 int jiffies ;
 int msleep (int) ;
 int readl (int *) ;
 scalar_t__ time_after (int,unsigned long) ;
 int writel (int,int *) ;

__attribute__((used)) static int nvme_shutdown_ctrl(struct nvme_dev *dev)
{
 unsigned long timeout;
 u32 cc;

 cc = (readl(&dev->bar->cc) & ~NVME_CC_SHN_MASK) | NVME_CC_SHN_NORMAL;
 writel(cc, &dev->bar->cc);

 timeout = 2 * HZ + jiffies;
 while ((readl(&dev->bar->csts) & NVME_CSTS_SHST_MASK) !=
       NVME_CSTS_SHST_CMPLT) {
  msleep(100);
  if (fatal_signal_pending(current))
   return -EINTR;
  if (time_after(jiffies, timeout)) {
   dev_err(&dev->pci_dev->dev,
    "Device shutdown incomplete; abort shutdown\n");
   return -ENODEV;
  }
 }

 return 0;
}
