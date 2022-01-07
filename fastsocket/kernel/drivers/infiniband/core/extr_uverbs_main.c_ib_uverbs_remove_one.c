
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct ib_uverbs_device {scalar_t__ devnum; int comp; int ref; TYPE_1__ cdev; int dev; } ;
struct ib_device {int dummy; } ;


 scalar_t__ IB_UVERBS_MAX_DEVICES ;
 int cdev_del (TYPE_1__*) ;
 int clear_bit (scalar_t__,int ) ;
 int dev_map ;
 int dev_set_drvdata (int ,int *) ;
 int device_destroy (int ,int ) ;
 struct ib_uverbs_device* ib_get_client_data (struct ib_device*,int *) ;
 int ib_uverbs_release_dev ;
 int kfree (struct ib_uverbs_device*) ;
 int kref_put (int *,int ) ;
 int overflow_map ;
 int uverbs_class ;
 int uverbs_client ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ib_uverbs_remove_one(struct ib_device *device)
{
 struct ib_uverbs_device *uverbs_dev = ib_get_client_data(device, &uverbs_client);

 if (!uverbs_dev)
  return;

 dev_set_drvdata(uverbs_dev->dev, ((void*)0));
 device_destroy(uverbs_class, uverbs_dev->cdev.dev);
 cdev_del(&uverbs_dev->cdev);

 if (uverbs_dev->devnum < IB_UVERBS_MAX_DEVICES)
  clear_bit(uverbs_dev->devnum, dev_map);
 else
  clear_bit(uverbs_dev->devnum - IB_UVERBS_MAX_DEVICES, overflow_map);

 kref_put(&uverbs_dev->ref, ib_uverbs_release_dev);
 wait_for_completion(&uverbs_dev->comp);
 kfree(uverbs_dev);
}
