
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dca_provider {int id; int * cd; } ;


 int dca_idr ;
 int dca_idr_lock ;
 int device_unregister (int *) ;
 int idr_remove (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dca_sysfs_remove_provider(struct dca_provider *dca)
{
 device_unregister(dca->cd);
 dca->cd = ((void*)0);
 spin_lock(&dca_idr_lock);
 idr_remove(&dca_idr, dca->id);
 spin_unlock(&dca_idr_lock);
}
