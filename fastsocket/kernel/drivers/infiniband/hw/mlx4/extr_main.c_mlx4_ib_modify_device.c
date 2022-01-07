
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_cmd_mailbox {int dma; int buf; } ;
struct ib_device_modify {int node_desc; } ;
struct ib_device {int node_desc; } ;
struct TYPE_2__ {int dev; int sm_lock; } ;


 int EOPNOTSUPP ;
 int IB_DEVICE_MODIFY_NODE_DESC ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_SET_NODE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (int ) ;
 int mlx4_cmd (int ,int ,int,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (int ,struct mlx4_cmd_mailbox*) ;
 scalar_t__ mlx4_is_slave (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx4_ib_modify_device(struct ib_device *ibdev, int mask,
     struct ib_device_modify *props)
{
 struct mlx4_cmd_mailbox *mailbox;
 unsigned long flags;

 if (mask & ~IB_DEVICE_MODIFY_NODE_DESC)
  return -EOPNOTSUPP;

 if (!(mask & IB_DEVICE_MODIFY_NODE_DESC))
  return 0;

 if (mlx4_is_slave(to_mdev(ibdev)->dev))
  return -EOPNOTSUPP;

 spin_lock_irqsave(&to_mdev(ibdev)->sm_lock, flags);
 memcpy(ibdev->node_desc, props->node_desc, 64);
 spin_unlock_irqrestore(&to_mdev(ibdev)->sm_lock, flags);





 mailbox = mlx4_alloc_cmd_mailbox(to_mdev(ibdev)->dev);
 if (IS_ERR(mailbox))
  return 0;

 memset(mailbox->buf, 0, 256);
 memcpy(mailbox->buf, props->node_desc, 64);
 mlx4_cmd(to_mdev(ibdev)->dev, mailbox->dma, 1, 0,
   MLX4_CMD_SET_NODE, MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);

 mlx4_free_cmd_mailbox(to_mdev(ibdev)->dev, mailbox);

 return 0;
}
