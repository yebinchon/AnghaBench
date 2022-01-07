
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int nr; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ID_MASK ;
 int core_lock ;
 int i2c_adapter_idr ;
 int i2c_register_adapter (struct i2c_adapter*) ;
 int idr_get_new_above (int *,struct i2c_adapter*,int,int*) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int i2c_add_numbered_adapter(struct i2c_adapter *adap)
{
 int id;
 int status;

 if (adap->nr & ~MAX_ID_MASK)
  return -EINVAL;

retry:
 if (idr_pre_get(&i2c_adapter_idr, GFP_KERNEL) == 0)
  return -ENOMEM;

 mutex_lock(&core_lock);



 status = idr_get_new_above(&i2c_adapter_idr, adap, adap->nr, &id);
 if (status == 0 && id != adap->nr) {
  status = -EBUSY;
  idr_remove(&i2c_adapter_idr, id);
 }
 mutex_unlock(&core_lock);
 if (status == -EAGAIN)
  goto retry;

 if (status == 0)
  status = i2c_register_adapter(adap);
 return status;
}
