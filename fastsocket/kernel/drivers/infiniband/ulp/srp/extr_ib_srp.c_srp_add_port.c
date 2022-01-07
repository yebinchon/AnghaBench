
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int parent; int * class; } ;
struct srp_host {TYPE_2__ dev; int port; struct srp_device* srp_dev; int released; int target_lock; int target_list; } ;
struct srp_device {TYPE_1__* dev; } ;
struct TYPE_6__ {int name; int dma_device; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_attr_add_target ;
 int dev_attr_ibdev ;
 int dev_attr_port ;
 int dev_set_name (TYPE_2__*,char*,int ,int ) ;
 scalar_t__ device_create_file (TYPE_2__*,int *) ;
 scalar_t__ device_register (TYPE_2__*) ;
 int device_unregister (TYPE_2__*) ;
 int init_completion (int *) ;
 int kfree (struct srp_host*) ;
 struct srp_host* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int srp_class ;

__attribute__((used)) static struct srp_host *srp_add_port(struct srp_device *device, u8 port)
{
 struct srp_host *host;

 host = kzalloc(sizeof *host, GFP_KERNEL);
 if (!host)
  return ((void*)0);

 INIT_LIST_HEAD(&host->target_list);
 spin_lock_init(&host->target_lock);
 init_completion(&host->released);
 host->srp_dev = device;
 host->port = port;

 host->dev.class = &srp_class;
 host->dev.parent = device->dev->dma_device;
 dev_set_name(&host->dev, "srp-%s-%d", device->dev->name, port);

 if (device_register(&host->dev))
  goto free_host;
 if (device_create_file(&host->dev, &dev_attr_add_target))
  goto err_class;
 if (device_create_file(&host->dev, &dev_attr_ibdev))
  goto err_class;
 if (device_create_file(&host->dev, &dev_attr_port))
  goto err_class;

 return host;

err_class:
 device_unregister(&host->dev);

free_host:
 kfree(host);

 return ((void*)0);
}
