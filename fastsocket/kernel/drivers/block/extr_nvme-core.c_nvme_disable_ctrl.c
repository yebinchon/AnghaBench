
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvme_dev {TYPE_1__* bar; } ;
struct TYPE_2__ {int cc; } ;


 int NVME_CC_ENABLE ;
 int nvme_wait_ready (struct nvme_dev*,int ,int) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int nvme_disable_ctrl(struct nvme_dev *dev, u64 cap)
{
 u32 cc = readl(&dev->bar->cc);

 if (cc & NVME_CC_ENABLE)
  writel(cc & ~NVME_CC_ENABLE, &dev->bar->cc);
 return nvme_wait_ready(dev, cap, 0);
}
