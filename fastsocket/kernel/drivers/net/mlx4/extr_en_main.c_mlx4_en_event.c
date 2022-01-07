
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {int link_state; int linkstate_task; } ;
struct mlx4_en_dev {int * pndev; int workqueue; } ;
struct TYPE_2__ {unsigned long num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef enum mlx4_dev_event { ____Placeholder_mlx4_dev_event } mlx4_dev_event ;





 int mlx4_err (struct mlx4_en_dev*,char*) ;
 int mlx4_warn (struct mlx4_en_dev*,char*,int,int) ;
 struct mlx4_en_priv* netdev_priv (int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void mlx4_en_event(struct mlx4_dev *dev, void *endev_ptr,
     enum mlx4_dev_event event, unsigned long port)
{
 struct mlx4_en_dev *mdev = (struct mlx4_en_dev *) endev_ptr;
 struct mlx4_en_priv *priv;

 switch (event) {
 case 128:
 case 129:
  if (!mdev->pndev[port])
   return;
  priv = netdev_priv(mdev->pndev[port]);


  priv->link_state = event;
  queue_work(mdev->workqueue, &priv->linkstate_task);
  break;

 case 130:
  mlx4_err(mdev, "Internal error detected, restarting device\n");
  break;

 default:
  if (port < 1 || port > dev->caps.num_ports ||
      !mdev->pndev[port])
   return;
  mlx4_warn(mdev, "Unhandled event %d for port %d\n", event,
     (int) port);
 }
}
