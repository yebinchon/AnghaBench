
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct c2port_ops {int blocks_num; int block_size; int (* access ) (struct c2port_device*,int ) ;int c2d_set; int c2d_get; int c2ck_set; int c2d_dir; } ;
struct c2port_device {int id; int dev; scalar_t__ flash_access; scalar_t__ access; int mutex; struct c2port_ops* ops; int name; } ;
struct TYPE_3__ {int size; } ;


 int C2PORT_NAME_LEN ;
 int EINVAL ;
 int ENOMEM ;
 struct c2port_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 TYPE_1__ c2port_bin_attrs ;
 int c2port_class ;
 int c2port_idr ;
 int c2port_idr_lock ;
 int dev_info (int ,char*,char*,...) ;
 int dev_set_drvdata (int ,struct c2port_device*) ;
 int device_create (int ,int *,int ,struct c2port_device*,char*,int) ;
 int device_create_bin_file (int ,TYPE_1__*) ;
 int device_destroy (int ,int ) ;
 int flags ;
 int idr_get_new (int *,struct c2port_device*,int*) ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int kfree (struct c2port_device*) ;
 struct c2port_device* kmalloc (int,int ) ;
 int kmemcheck_annotate_bitfield (struct c2port_device*,int ) ;
 int mutex_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int strncpy (int ,char*,int ) ;
 int stub1 (struct c2port_device*,int ) ;
 scalar_t__ unlikely (int) ;

struct c2port_device *c2port_device_register(char *name,
     struct c2port_ops *ops, void *devdata)
{
 struct c2port_device *c2dev;
 int id, ret;

 if (unlikely(!ops) || unlikely(!ops->access) || unlikely(!ops->c2d_dir) || unlikely(!ops->c2ck_set) || unlikely(!ops->c2d_get) || unlikely(!ops->c2d_set))


  return ERR_PTR(-EINVAL);

 c2dev = kmalloc(sizeof(struct c2port_device), GFP_KERNEL);
 kmemcheck_annotate_bitfield(c2dev, flags);
 if (unlikely(!c2dev))
  return ERR_PTR(-ENOMEM);

 ret = idr_pre_get(&c2port_idr, GFP_KERNEL);
 if (!ret) {
  ret = -ENOMEM;
  goto error_idr_get_new;
 }

 spin_lock_irq(&c2port_idr_lock);
 ret = idr_get_new(&c2port_idr, c2dev, &id);
 spin_unlock_irq(&c2port_idr_lock);

 if (ret < 0)
  goto error_idr_get_new;
 c2dev->id = id;

 c2dev->dev = device_create(c2port_class, ((void*)0), 0, c2dev,
     "c2port%d", id);
 if (unlikely(!c2dev->dev)) {
  ret = -ENOMEM;
  goto error_device_create;
 }
 dev_set_drvdata(c2dev->dev, c2dev);

 strncpy(c2dev->name, name, C2PORT_NAME_LEN);
 c2dev->ops = ops;
 mutex_init(&c2dev->mutex);


 c2port_bin_attrs.size = ops->blocks_num * ops->block_size;
 ret = device_create_bin_file(c2dev->dev, &c2port_bin_attrs);
 if (unlikely(ret))
  goto error_device_create_bin_file;


 c2dev->access = c2dev->flash_access = 0;
 ops->access(c2dev, 0);

 dev_info(c2dev->dev, "C2 port %s added\n", name);
 dev_info(c2dev->dev, "%s flash has %d blocks x %d bytes "
    "(%d bytes total)\n",
    name, ops->blocks_num, ops->block_size,
    ops->blocks_num * ops->block_size);

 return c2dev;

error_device_create_bin_file:
 device_destroy(c2port_class, 0);

error_device_create:
 spin_lock_irq(&c2port_idr_lock);
 idr_remove(&c2port_idr, id);
 spin_unlock_irq(&c2port_idr_lock);

error_idr_get_new:
 kfree(c2dev);

 return ERR_PTR(ret);
}
