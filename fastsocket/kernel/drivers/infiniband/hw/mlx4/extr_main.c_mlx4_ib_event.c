
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mlx4_ib_dev {int num_ports; int ib_active; int ib_dev; } ;
struct mlx4_eqe {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct ib_event_work {int work; struct mlx4_ib_dev* ib_dev; int ib_eqe; } ;
struct TYPE_2__ {scalar_t__ port_num; } ;
struct ib_event {TYPE_1__ element; void* device; int event; } ;
struct ib_device {int dummy; } ;
typedef enum mlx4_dev_event { ____Placeholder_mlx4_dev_event } mlx4_dev_event ;


 int GFP_ATOMIC ;
 int IB_EVENT_DEVICE_FATAL ;
 int IB_EVENT_PORT_ACTIVE ;
 int IB_EVENT_PORT_ERR ;
 int IB_LINK_LAYER_INFINIBAND ;
 int INIT_WORK (int *,int (*) (int *)) ;






 int do_slave_init (struct mlx4_ib_dev*,int,int) ;
 int handle_port_mgmt_change_event (int *) ;
 int ib_dispatch_event (struct ib_event*) ;
 struct ib_event_work* kmalloc (int,int ) ;
 int memcpy (int *,struct mlx4_eqe*,int) ;
 int mlx4_ib_invalidate_all_guid_record (struct mlx4_ib_dev*,int) ;
 int mlx4_is_master (struct mlx4_dev*) ;
 int pr_err (char*) ;
 int queue_work (int ,int *) ;
 int rdma_port_get_link_layer (int *,int) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;
 int wq ;

__attribute__((used)) static void mlx4_ib_event(struct mlx4_dev *dev, void *ibdev_ptr,
     enum mlx4_dev_event event, unsigned long param)
{
 struct ib_event ibev;
 struct mlx4_ib_dev *ibdev = to_mdev((struct ib_device *) ibdev_ptr);
 struct mlx4_eqe *eqe = ((void*)0);
 struct ib_event_work *ew;
 int p = 0;

 if (event == 131)
  eqe = (struct mlx4_eqe *)param;
 else
  p = (int) param;

 switch (event) {
 case 130:
  if (p > ibdev->num_ports)
   return;
  if (mlx4_is_master(dev) &&
      rdma_port_get_link_layer(&ibdev->ib_dev, p) ==
   IB_LINK_LAYER_INFINIBAND) {
   mlx4_ib_invalidate_all_guid_record(ibdev, p);
  }
  ibev.event = IB_EVENT_PORT_ACTIVE;
  break;

 case 132:
  if (p > ibdev->num_ports)
   return;
  ibev.event = IB_EVENT_PORT_ERR;
  break;

 case 133:
  ibdev->ib_active = 0;
  ibev.event = IB_EVENT_DEVICE_FATAL;
  break;

 case 131:
  ew = kmalloc(sizeof *ew, GFP_ATOMIC);
  if (!ew) {
   pr_err("failed to allocate memory for events work\n");
   break;
  }

  INIT_WORK(&ew->work, handle_port_mgmt_change_event);
  memcpy(&ew->ib_eqe, eqe, sizeof *eqe);
  ew->ib_dev = ibdev;

  if (mlx4_is_master(dev))
   queue_work(wq, &ew->work);
  else
   handle_port_mgmt_change_event(&ew->work);
  return;

 case 129:

  do_slave_init(ibdev, p, 1);
  return;

 case 128:

  do_slave_init(ibdev, p, 0);
  return;

 default:
  return;
 }

 ibev.device = ibdev_ptr;
 ibev.element.port_num = (u8) p;

 ib_dispatch_event(&ibev);
}
