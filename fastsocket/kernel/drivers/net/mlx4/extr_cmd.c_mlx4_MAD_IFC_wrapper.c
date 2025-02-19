
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_vhcr {int in_modifier; int op; int op_modifier; } ;
struct TYPE_7__ {TYPE_2__* slave_state; } ;
struct TYPE_8__ {TYPE_3__ master; } ;
struct mlx4_priv {int*** virt2phys_pkey; TYPE_4__ mfunc; } ;
struct TYPE_5__ {int num_ports; int * pkey_table_len; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int dma; struct ib_smp* buf; } ;
struct mlx4_cmd_info {int dummy; } ;
struct ib_smp {int* data; int base_version; scalar_t__ mgmt_class; int class_version; scalar_t__ method; scalar_t__ attr_id; int attr_mod; } ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_6__ {int* ib_cap_mask; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 scalar_t__ IB_MGMT_METHOD_GET ;
 scalar_t__ IB_MGMT_METHOD_SET ;
 scalar_t__ IB_SMP_ATTR_GUID_INFO ;
 scalar_t__ IB_SMP_ATTR_NODE_INFO ;
 scalar_t__ IB_SMP_ATTR_PKEY_TABLE ;
 scalar_t__ IB_SMP_ATTR_PORT_INFO ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_C ;
 int PORT_CAPABILITY_LOCATION_IN_SMP ;
 int PORT_STATE_OFFSET ;
 int be16_to_cpu (scalar_t__) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int) ;
 int get_full_pkey_table (struct mlx4_dev*,int,int *,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*) ;
 int * kcalloc (int ,int,int ) ;
 int kfree (int *) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int,int ,int ,int ,int ) ;
 int mlx4_err (struct mlx4_dev*,char*,int,scalar_t__,scalar_t__,int ) ;
 int mlx4_get_slave_node_guid (struct mlx4_dev*,int) ;
 int mlx4_master_func_num (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int vf_port_state (struct mlx4_dev*,int,int) ;

__attribute__((used)) static int mlx4_MAD_IFC_wrapper(struct mlx4_dev *dev, int slave,
    struct mlx4_vhcr *vhcr,
    struct mlx4_cmd_mailbox *inbox,
    struct mlx4_cmd_mailbox *outbox,
    struct mlx4_cmd_info *cmd)
{
 struct ib_smp *smp = inbox->buf;
 u32 index;
 u8 port;
 u16 *table;
 int err;
 int vidx, pidx;
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct ib_smp *outsmp = outbox->buf;
 __be16 *outtab = (__be16 *)(outsmp->data);
 __be32 slave_cap_mask;
 __be64 slave_node_guid;
 port = vhcr->in_modifier;

 if (smp->base_version == 1 &&
     smp->mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED &&
     smp->class_version == 1) {
  if (smp->method == IB_MGMT_METHOD_GET) {
   if (smp->attr_id == IB_SMP_ATTR_PKEY_TABLE) {
    index = be32_to_cpu(smp->attr_mod);
    if (port < 1 || port > dev->caps.num_ports)
     return -EINVAL;
    table = kcalloc(dev->caps.pkey_table_len[port], sizeof *table, GFP_KERNEL);
    if (!table)
     return -ENOMEM;



    err = get_full_pkey_table(dev, port, table, inbox, outbox);
    if (!err) {
     for (vidx = index * 32; vidx < (index + 1) * 32; ++vidx) {
      pidx = priv->virt2phys_pkey[slave][port - 1][vidx];
      outtab[vidx % 32] = cpu_to_be16(table[pidx]);
     }
    }
    kfree(table);
    return err;
   }
   if (smp->attr_id == IB_SMP_ATTR_PORT_INFO) {


    err = mlx4_cmd_box(dev, inbox->dma, outbox->dma,
         vhcr->in_modifier, vhcr->op_modifier,
         vhcr->op, MLX4_CMD_TIME_CLASS_C, MLX4_CMD_NATIVE);

    if (!err && slave != mlx4_master_func_num(dev)) {
     u8 *state = outsmp->data + PORT_STATE_OFFSET;

     *state = (*state & 0xf0) | vf_port_state(dev, port, slave);
     slave_cap_mask = priv->mfunc.master.slave_state[slave].ib_cap_mask[port];
     memcpy(outsmp->data + PORT_CAPABILITY_LOCATION_IN_SMP, &slave_cap_mask, 4);
    }
    return err;
   }
   if (smp->attr_id == IB_SMP_ATTR_GUID_INFO) {

    smp->attr_mod = cpu_to_be32(slave / 8);

    err = mlx4_cmd_box(dev, inbox->dma, outbox->dma,
          vhcr->in_modifier, vhcr->op_modifier,
          vhcr->op, MLX4_CMD_TIME_CLASS_C, MLX4_CMD_NATIVE);
    if (!err) {

     if (slave % 8)
      memcpy(outsmp->data,
             outsmp->data + (slave % 8) * 8, 8);

     memset(outsmp->data + 8, 0, 56);
    }
    return err;
   }
   if (smp->attr_id == IB_SMP_ATTR_NODE_INFO) {
    err = mlx4_cmd_box(dev, inbox->dma, outbox->dma,
          vhcr->in_modifier, vhcr->op_modifier,
          vhcr->op, MLX4_CMD_TIME_CLASS_C, MLX4_CMD_NATIVE);
    if (!err) {
     slave_node_guid = mlx4_get_slave_node_guid(dev, slave);
     memcpy(outsmp->data + 12, &slave_node_guid, 8);
    }
    return err;
   }
  }
 }
 if (slave != mlx4_master_func_num(dev) &&
     ((smp->mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) ||
      (smp->mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED &&
       smp->method == IB_MGMT_METHOD_SET))) {
  mlx4_err(dev, "slave %d is trying to execute a Subnet MGMT MAD, "
    "class 0x%x, method 0x%x for attr 0x%x. Rejecting\n",
    slave, smp->method, smp->mgmt_class,
    be16_to_cpu(smp->attr_id));
  return -EPERM;
 }

 return mlx4_cmd_box(dev, inbox->dma, outbox->dma,
        vhcr->in_modifier, vhcr->op_modifier,
        vhcr->op, MLX4_CMD_TIME_CLASS_C, MLX4_CMD_NATIVE);
}
