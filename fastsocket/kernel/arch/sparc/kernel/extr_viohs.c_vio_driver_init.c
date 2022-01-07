
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vio_version {int dummy; } ;
struct vio_driver_state {char* name; int dev_class; int ver_table_entries; int timer; struct vio_driver_ops* ops; struct vio_version* ver_table; struct vio_dev* vdev; int lock; } ;
struct vio_driver_ops {int handshake_complete; int handle_attr; int send_attr; } ;
struct vio_dev {int dummy; } ;


 int EINVAL ;




 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;
 int vio_port_timer ;

int vio_driver_init(struct vio_driver_state *vio, struct vio_dev *vdev,
      u8 dev_class, struct vio_version *ver_table,
      int ver_table_size, struct vio_driver_ops *ops,
      char *name)
{
 switch (dev_class) {
 case 129:
 case 128:
 case 131:
 case 130:
  break;

 default:
  return -EINVAL;
 }

 if (!ops->send_attr ||
     !ops->handle_attr ||
     !ops->handshake_complete)
  return -EINVAL;

 if (!ver_table || ver_table_size < 0)
  return -EINVAL;

 if (!name)
  return -EINVAL;

 spin_lock_init(&vio->lock);

 vio->name = name;

 vio->dev_class = dev_class;
 vio->vdev = vdev;

 vio->ver_table = ver_table;
 vio->ver_table_entries = ver_table_size;

 vio->ops = ops;

 setup_timer(&vio->timer, vio_port_timer, (unsigned long) vio);

 return 0;
}
