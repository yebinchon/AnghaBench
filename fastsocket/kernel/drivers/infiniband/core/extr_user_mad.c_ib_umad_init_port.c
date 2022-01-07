
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; int kobj; void* owner; } ;
struct ib_umad_port {int dev_num; int port_num; TYPE_1__ cdev; TYPE_1__ sm_cdev; void* sm_dev; void* dev; int file_list; int file_mutex; int sm_sem; struct ib_device* ib_dev; } ;
struct ib_device {int dma_device; } ;
typedef scalar_t__ dev_t ;


 int IB_UMAD_MAX_PORTS ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (void*) ;
 void* THIS_MODULE ;
 scalar_t__ base_dev ;
 scalar_t__ cdev_add (TYPE_1__*,scalar_t__,int) ;
 int cdev_del (TYPE_1__*) ;
 int cdev_init (TYPE_1__*,int *) ;
 int clear_bit (int,int ) ;
 int dev_attr_ibdev ;
 int dev_attr_port ;
 int dev_map ;
 void* device_create (int ,int ,int ,struct ib_umad_port*,char*,int) ;
 scalar_t__ device_create_file (void*,int *) ;
 int device_destroy (int ,int ) ;
 int find_first_zero_bit (int ,int) ;
 int find_overflow_devnum () ;
 int kobject_set_name (int *,char*,int) ;
 int mutex_init (int *) ;
 scalar_t__ overflow_maj ;
 int overflow_map ;
 int port_lock ;
 int sema_init (int *,int) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int umad_class ;
 int umad_fops ;
 int umad_sm_fops ;

__attribute__((used)) static int ib_umad_init_port(struct ib_device *device, int port_num,
        struct ib_umad_port *port)
{
 int devnum;
 dev_t base;

 spin_lock(&port_lock);
 devnum = find_first_zero_bit(dev_map, IB_UMAD_MAX_PORTS);
 if (devnum >= IB_UMAD_MAX_PORTS) {
  spin_unlock(&port_lock);
  devnum = find_overflow_devnum();
  if (devnum < 0)
   return -1;

  spin_lock(&port_lock);
  port->dev_num = devnum + IB_UMAD_MAX_PORTS;
  base = devnum + overflow_maj;
  set_bit(devnum, overflow_map);
 } else {
  port->dev_num = devnum;
  base = devnum + base_dev;
  set_bit(devnum, dev_map);
 }
 spin_unlock(&port_lock);

 port->ib_dev = device;
 port->port_num = port_num;
 sema_init(&port->sm_sem, 1);
 mutex_init(&port->file_mutex);
 INIT_LIST_HEAD(&port->file_list);

 cdev_init(&port->cdev, &umad_fops);
 port->cdev.owner = THIS_MODULE;
 kobject_set_name(&port->cdev.kobj, "umad%d", port->dev_num);
 if (cdev_add(&port->cdev, base, 1))
  goto err_cdev;

 port->dev = device_create(umad_class, device->dma_device,
      port->cdev.dev, port,
      "umad%d", port->dev_num);
 if (IS_ERR(port->dev))
  goto err_cdev;

 if (device_create_file(port->dev, &dev_attr_ibdev))
  goto err_dev;
 if (device_create_file(port->dev, &dev_attr_port))
  goto err_dev;

 base += IB_UMAD_MAX_PORTS;
 cdev_init(&port->sm_cdev, &umad_sm_fops);
 port->sm_cdev.owner = THIS_MODULE;
 kobject_set_name(&port->sm_cdev.kobj, "issm%d", port->dev_num);
 if (cdev_add(&port->sm_cdev, base, 1))
  goto err_sm_cdev;

 port->sm_dev = device_create(umad_class, device->dma_device,
         port->sm_cdev.dev, port,
         "issm%d", port->dev_num);
 if (IS_ERR(port->sm_dev))
  goto err_sm_cdev;

 if (device_create_file(port->sm_dev, &dev_attr_ibdev))
  goto err_sm_dev;
 if (device_create_file(port->sm_dev, &dev_attr_port))
  goto err_sm_dev;

 return 0;

err_sm_dev:
 device_destroy(umad_class, port->sm_cdev.dev);

err_sm_cdev:
 cdev_del(&port->sm_cdev);

err_dev:
 device_destroy(umad_class, port->cdev.dev);

err_cdev:
 cdev_del(&port->cdev);
 if (port->dev_num < IB_UMAD_MAX_PORTS)
  clear_bit(devnum, dev_map);
 else
  clear_bit(devnum, overflow_map);

 return -1;
}
