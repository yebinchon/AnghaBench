
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_find_adapter_info {scalar_t__ id; scalar_t__ slot; struct mca_device* mca_dev; } ;
struct mca_device {scalar_t__ pos_id; scalar_t__ slot; } ;
struct device {int dummy; } ;


 struct mca_device* to_mca_device (struct device*) ;

__attribute__((used)) static int mca_find_adapter_callback(struct device *dev, void *data)
{
 struct mca_find_adapter_info *info = data;
 struct mca_device *mca_dev = to_mca_device(dev);

 if(mca_dev->pos_id != info->id)
  return 0;

 if(mca_dev->slot < info->slot)
  return 0;

 if(!info->mca_dev || info->mca_dev->slot >= mca_dev->slot)
  info->mca_dev = mca_dev;

 return 0;
}
