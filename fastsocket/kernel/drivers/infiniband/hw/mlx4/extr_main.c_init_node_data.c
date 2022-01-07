
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int node_guid; int * node_desc; } ;
struct mlx4_ib_dev {TYPE_1__ ib_dev; TYPE_2__* dev; } ;
struct ib_smp {scalar_t__ data; int attr_id; } ;
typedef int __be32 ;
struct TYPE_4__ {int rev_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_SMP_ATTR_NODE_DESC ;
 int IB_SMP_ATTR_NODE_INFO ;
 int MLX4_MAD_IFC_IGNORE_KEYS ;
 int MLX4_MAD_IFC_NET_VIEW ;
 int be32_to_cpup (int *) ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 struct ib_smp* kzalloc (int,int ) ;
 int memcpy (int *,scalar_t__,int) ;
 int mlx4_MAD_IFC (struct mlx4_ib_dev*,int,int,int *,int *,struct ib_smp*,struct ib_smp*) ;
 scalar_t__ mlx4_is_master (TYPE_2__*) ;

__attribute__((used)) static int init_node_data(struct mlx4_ib_dev *dev)
{
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 int mad_ifc_flags = MLX4_MAD_IFC_IGNORE_KEYS;
 int err = -ENOMEM;

 in_mad = kzalloc(sizeof *in_mad, GFP_KERNEL);
 out_mad = kmalloc(sizeof *out_mad, GFP_KERNEL);
 if (!in_mad || !out_mad)
  goto out;

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_NODE_DESC;
 if (mlx4_is_master(dev->dev))
  mad_ifc_flags |= MLX4_MAD_IFC_NET_VIEW;

 err = mlx4_MAD_IFC(dev, mad_ifc_flags, 1, ((void*)0), ((void*)0), in_mad, out_mad);
 if (err)
  goto out;

 memcpy(dev->ib_dev.node_desc, out_mad->data, 64);

 in_mad->attr_id = IB_SMP_ATTR_NODE_INFO;

 err = mlx4_MAD_IFC(dev, mad_ifc_flags, 1, ((void*)0), ((void*)0), in_mad, out_mad);
 if (err)
  goto out;

 dev->dev->rev_id = be32_to_cpup((__be32 *) (out_mad->data + 32));
 memcpy(&dev->ib_dev.node_guid, out_mad->data + 12, 8);

out:
 kfree(in_mad);
 kfree(out_mad);
 return err;
}
