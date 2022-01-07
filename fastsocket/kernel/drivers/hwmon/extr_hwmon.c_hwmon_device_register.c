
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EAGAIN ;
 int ENOMEM ;
 struct device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HWMON_ID_FORMAT ;
 scalar_t__ IS_ERR (struct device*) ;
 int MAX_ID_MASK ;
 int MKDEV (int ,int ) ;
 struct device* device_create (int ,struct device*,int ,int *,int ,int) ;
 int hwmon_class ;
 int hwmon_idr ;
 int idr_get_new (int *,int *,int*) ;
 int idr_lock ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

struct device *hwmon_device_register(struct device *dev)
{
 struct device *hwdev;
 int id, err;

again:
 if (unlikely(idr_pre_get(&hwmon_idr, GFP_KERNEL) == 0))
  return ERR_PTR(-ENOMEM);

 spin_lock(&idr_lock);
 err = idr_get_new(&hwmon_idr, ((void*)0), &id);
 spin_unlock(&idr_lock);

 if (unlikely(err == -EAGAIN))
  goto again;
 else if (unlikely(err))
  return ERR_PTR(err);

 id = id & MAX_ID_MASK;
 hwdev = device_create(hwmon_class, dev, MKDEV(0, 0), ((void*)0),
         HWMON_ID_FORMAT, id);

 if (IS_ERR(hwdev)) {
  spin_lock(&idr_lock);
  idr_remove(&hwmon_idr, id);
  spin_unlock(&idr_lock);
 }

 return hwdev;
}
