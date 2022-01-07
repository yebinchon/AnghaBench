
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tifm_adapter {unsigned int num_sockets; int dev; int id; TYPE_1__** sockets; } ;
struct TYPE_2__ {int dev; } ;


 int device_del (int *) ;
 int device_unregister (int *) ;
 int flush_workqueue (int ) ;
 int idr_remove (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tifm_adapter_idr ;
 int tifm_adapter_lock ;
 int workqueue ;

void tifm_remove_adapter(struct tifm_adapter *fm)
{
 unsigned int cnt;

 flush_workqueue(workqueue);
 for (cnt = 0; cnt < fm->num_sockets; ++cnt) {
  if (fm->sockets[cnt])
   device_unregister(&fm->sockets[cnt]->dev);
 }

 spin_lock(&tifm_adapter_lock);
 idr_remove(&tifm_adapter_idr, fm->id);
 spin_unlock(&tifm_adapter_lock);
 device_del(&fm->dev);
}
