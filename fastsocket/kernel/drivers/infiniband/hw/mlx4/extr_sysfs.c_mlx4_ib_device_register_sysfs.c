
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int phys_port_cnt; TYPE_1__* ports_parent; } ;
struct mlx4_ib_dev {TYPE_2__ ib_dev; void* iov_parent; void* ports_parent; int dev; } ;
struct TYPE_3__ {void* parent; } ;


 int ENOMEM ;
 int add_port_entries (struct mlx4_ib_dev*,int) ;
 void* kobject_create_and_add (char*,int ) ;
 int kobject_get (void*) ;
 int kobject_put (void*) ;
 int mlx4_is_master (int ) ;
 int pr_err (char*,int) ;
 int register_pkey_tree (struct mlx4_ib_dev*) ;

int mlx4_ib_device_register_sysfs(struct mlx4_ib_dev *dev)
{
 int i;
 int ret = 0;

 if (!mlx4_is_master(dev->dev))
  return 0;

 dev->iov_parent =
  kobject_create_and_add("iov",
           kobject_get(dev->ib_dev.ports_parent->parent));
 if (!dev->iov_parent) {
  ret = -ENOMEM;
  goto err;
 }
 dev->ports_parent =
  kobject_create_and_add("ports",
           kobject_get(dev->iov_parent));
 if (!dev->ports_parent) {
  ret = -ENOMEM;
  goto err_ports;
 }

 for (i = 1; i <= dev->ib_dev.phys_port_cnt; ++i) {
  ret = add_port_entries(dev, i);
  if (ret)
   goto err_add_entries;
 }

 ret = register_pkey_tree(dev);
 if (ret)
  goto err_add_entries;
 return 0;

err_add_entries:
 kobject_put(dev->ports_parent);

err_ports:
 kobject_put(dev->iov_parent);
err:
 kobject_put(dev->ib_dev.ports_parent->parent);
 pr_err("mlx4_ib_device_register_sysfs error (%d)\n", ret);
 return ret;
}
