
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vlan_group {int dummy; } ;
struct mlx4_set_vlan_fltr_mbox {int * entry; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; struct mlx4_set_vlan_fltr_mbox* buf; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_SET_VLAN_FLTR ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int VLAN_FLTR_SIZE ;
 int cpu_to_be32 (int) ;
 int memset (struct mlx4_set_vlan_fltr_mbox*,int ,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 scalar_t__ vlan_group_get_device (struct vlan_group*,int ) ;

int mlx4_SET_VLAN_FLTR(struct mlx4_dev *dev, u8 port, struct vlan_group *grp)
{
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_set_vlan_fltr_mbox *filter;
 int i;
 int j;
 int index = 0;
 u32 entry;
 int err = 0;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 filter = mailbox->buf;
 if (grp) {
  memset(filter, 0, sizeof *filter);
  for (i = VLAN_FLTR_SIZE - 1; i >= 0; i--) {
   entry = 0;
   for (j = 0; j < 32; j++)
    if (vlan_group_get_device(grp, index++))
     entry |= 1 << j;
   filter->entry[i] = cpu_to_be32(entry);
  }
 } else {

  memset(filter, 0, sizeof(*filter));
 }
 err = mlx4_cmd(dev, mailbox->dma, port, 0, MLX4_CMD_SET_VLAN_FLTR,
         MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED);
 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
