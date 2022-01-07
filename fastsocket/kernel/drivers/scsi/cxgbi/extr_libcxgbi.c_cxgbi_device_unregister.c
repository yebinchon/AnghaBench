
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxgbi_device {int list_head; TYPE_1__** ports; scalar_t__ nports; } ;
struct TYPE_2__ {char* name; } ;


 int CXGBI_DBG_DEV ;
 int cdev_mutex ;
 int cxgbi_device_destroy (struct cxgbi_device*) ;
 int list_del (int *) ;
 int log_debug (int,char*,struct cxgbi_device*,scalar_t__,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cxgbi_device_unregister(struct cxgbi_device *cdev)
{
 log_debug(1 << CXGBI_DBG_DEV,
  "cdev 0x%p, p# %u,%s.\n",
  cdev, cdev->nports, cdev->nports ? cdev->ports[0]->name : "");
 mutex_lock(&cdev_mutex);
 list_del(&cdev->list_head);
 mutex_unlock(&cdev_mutex);
 cxgbi_device_destroy(cdev);
}
