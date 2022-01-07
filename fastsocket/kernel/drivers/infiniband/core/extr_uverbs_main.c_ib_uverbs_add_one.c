
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; int kobj; int * ops; int owner; } ;
struct ib_uverbs_device {int devnum; int comp; int ref; TYPE_1__ cdev; int dev; int num_comp_vectors; struct ib_device* ib_dev; int xrcd_tree_mutex; int xrcd_tree; } ;
struct ib_device {int dma_device; scalar_t__ mmap; int num_comp_vectors; int alloc_ucontext; } ;
typedef scalar_t__ dev_t ;


 int GFP_KERNEL ;
 scalar_t__ IB_UVERBS_BASE_DEV ;
 int IB_UVERBS_MAX_DEVICES ;
 scalar_t__ IS_ERR (int ) ;
 int RB_ROOT ;
 int THIS_MODULE ;
 scalar_t__ cdev_add (TYPE_1__*,scalar_t__,int) ;
 int cdev_del (TYPE_1__*) ;
 int cdev_init (TYPE_1__*,int *) ;
 int clear_bit (int,int ) ;
 int dev_attr_abi_version ;
 int dev_attr_ibdev ;
 int dev_map ;
 int device_create (int ,int ,int ,struct ib_uverbs_device*,char*,int) ;
 scalar_t__ device_create_file (int ,int *) ;
 int device_destroy (int ,int ) ;
 int find_first_zero_bit (int ,int) ;
 int find_overflow_devnum () ;
 int ib_set_client_data (struct ib_device*,int *,struct ib_uverbs_device*) ;
 int ib_uverbs_release_dev ;
 int init_completion (int *) ;
 int kfree (struct ib_uverbs_device*) ;
 int kobject_set_name (int *,char*,int) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct ib_uverbs_device* kzalloc (int,int ) ;
 int map_lock ;
 int mutex_init (int *) ;
 scalar_t__ overflow_maj ;
 int overflow_map ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uverbs_class ;
 int uverbs_client ;
 int uverbs_fops ;
 int uverbs_mmap_fops ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ib_uverbs_add_one(struct ib_device *device)
{
 int devnum;
 dev_t base;
 struct ib_uverbs_device *uverbs_dev;

 if (!device->alloc_ucontext)
  return;

 uverbs_dev = kzalloc(sizeof *uverbs_dev, GFP_KERNEL);
 if (!uverbs_dev)
  return;

 kref_init(&uverbs_dev->ref);
 init_completion(&uverbs_dev->comp);
 uverbs_dev->xrcd_tree = RB_ROOT;
 mutex_init(&uverbs_dev->xrcd_tree_mutex);

 spin_lock(&map_lock);
 devnum = find_first_zero_bit(dev_map, IB_UVERBS_MAX_DEVICES);
 if (devnum >= IB_UVERBS_MAX_DEVICES) {
  spin_unlock(&map_lock);
  devnum = find_overflow_devnum();
  if (devnum < 0)
   goto err;

  spin_lock(&map_lock);
  uverbs_dev->devnum = devnum + IB_UVERBS_MAX_DEVICES;
  base = devnum + overflow_maj;
  set_bit(devnum, overflow_map);
 } else {
  uverbs_dev->devnum = devnum;
  base = devnum + IB_UVERBS_BASE_DEV;
  set_bit(devnum, dev_map);
 }
 spin_unlock(&map_lock);

 uverbs_dev->ib_dev = device;
 uverbs_dev->num_comp_vectors = device->num_comp_vectors;

 cdev_init(&uverbs_dev->cdev, ((void*)0));
 uverbs_dev->cdev.owner = THIS_MODULE;
 uverbs_dev->cdev.ops = device->mmap ? &uverbs_mmap_fops : &uverbs_fops;
 kobject_set_name(&uverbs_dev->cdev.kobj, "uverbs%d", uverbs_dev->devnum);
 if (cdev_add(&uverbs_dev->cdev, base, 1))
  goto err_cdev;

 uverbs_dev->dev = device_create(uverbs_class, device->dma_device,
     uverbs_dev->cdev.dev, uverbs_dev,
     "uverbs%d", uverbs_dev->devnum);
 if (IS_ERR(uverbs_dev->dev))
  goto err_cdev;

 if (device_create_file(uverbs_dev->dev, &dev_attr_ibdev))
  goto err_class;
 if (device_create_file(uverbs_dev->dev, &dev_attr_abi_version))
  goto err_class;

 ib_set_client_data(device, &uverbs_client, uverbs_dev);

 return;

err_class:
 device_destroy(uverbs_class, uverbs_dev->cdev.dev);

err_cdev:
 cdev_del(&uverbs_dev->cdev);
 if (uverbs_dev->devnum < IB_UVERBS_MAX_DEVICES)
  clear_bit(devnum, dev_map);
 else
  clear_bit(devnum, overflow_map);

err:
 kref_put(&uverbs_dev->ref, ib_uverbs_release_dev);
 wait_for_completion(&uverbs_dev->comp);
 kfree(uverbs_dev);
 return;
}
