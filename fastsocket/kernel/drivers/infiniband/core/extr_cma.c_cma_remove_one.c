
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
struct cma_device {int list; } ;


 int cma_client ;
 int cma_process_remove (struct cma_device*) ;
 struct cma_device* ib_get_client_data (struct ib_device*,int *) ;
 int kfree (struct cma_device*) ;
 int list_del (int *) ;
 int lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cma_remove_one(struct ib_device *device)
{
 struct cma_device *cma_dev;

 cma_dev = ib_get_client_data(device, &cma_client);
 if (!cma_dev)
  return;

 mutex_lock(&lock);
 list_del(&cma_dev->list);
 mutex_unlock(&lock);

 cma_process_remove(cma_dev);
 kfree(cma_dev);
}
