
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_adapter {int id; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_name (int *,char*,int ) ;
 int device_add (int *) ;
 int idr_get_new (int *,struct tifm_adapter*,int *) ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tifm_adapter_idr ;
 int tifm_adapter_lock ;

int tifm_add_adapter(struct tifm_adapter *fm)
{
 int rc;

 if (!idr_pre_get(&tifm_adapter_idr, GFP_KERNEL))
  return -ENOMEM;

 spin_lock(&tifm_adapter_lock);
 rc = idr_get_new(&tifm_adapter_idr, fm, &fm->id);
 spin_unlock(&tifm_adapter_lock);
 if (rc)
  return rc;

 dev_set_name(&fm->dev, "tifm%u", fm->id);
 rc = device_add(&fm->dev);
 if (rc) {
  spin_lock(&tifm_adapter_lock);
  idr_remove(&tifm_adapter_idr, fm->id);
  spin_unlock(&tifm_adapter_lock);
 }

 return rc;
}
