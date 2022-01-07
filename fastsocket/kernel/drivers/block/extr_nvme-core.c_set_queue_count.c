
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvme_dev {int dummy; } ;


 int EBUSY ;
 int EIO ;
 int NVME_FEAT_NUM_QUEUES ;
 int min (int,int) ;
 int nvme_set_features (struct nvme_dev*,int ,int,int ,int*) ;

__attribute__((used)) static int set_queue_count(struct nvme_dev *dev, int count)
{
 int status;
 u32 result;
 u32 q_count = (count - 1) | ((count - 1) << 16);

 status = nvme_set_features(dev, NVME_FEAT_NUM_QUEUES, q_count, 0,
        &result);
 if (status)
  return status < 0 ? -EIO : -EBUSY;
 return min(result & 0xffff, result >> 16) + 1;
}
