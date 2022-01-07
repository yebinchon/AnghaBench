
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvme_dev {int dummy; } ;


 int nvme_wait_ready (struct nvme_dev*,int ,int) ;

__attribute__((used)) static int nvme_enable_ctrl(struct nvme_dev *dev, u64 cap)
{
 return nvme_wait_ready(dev, cap, 1);
}
