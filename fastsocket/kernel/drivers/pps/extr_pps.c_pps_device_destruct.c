
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_device {int id; int cdev; } ;
struct device {int id; int cdev; } ;


 int cdev_del (int *) ;
 struct pps_device* dev_get_drvdata (struct pps_device*) ;
 int idr_remove (int *,int ) ;
 int kfree (struct pps_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pps_idr ;
 int pps_idr_lock ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void pps_device_destruct(struct device *dev)
{
 struct pps_device *pps = dev_get_drvdata(dev);

 cdev_del(&pps->cdev);


 pr_debug("deallocating pps%d\n", pps->id);
 mutex_lock(&pps_idr_lock);
 idr_remove(&pps_idr, pps->id);
 mutex_unlock(&pps_idr_lock);

 kfree(dev);
 kfree(pps);
}
