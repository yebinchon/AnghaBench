
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int class_dev; int index; } ;


 int idr_remove (int *,int ) ;
 int mmc_host_idr ;
 int mmc_host_lock ;
 int put_device (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mmc_free_host(struct mmc_host *host)
{
 spin_lock(&mmc_host_lock);
 idr_remove(&mmc_host_idr, host->index);
 spin_unlock(&mmc_host_lock);

 put_device(&host->class_dev);
}
