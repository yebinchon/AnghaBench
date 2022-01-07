
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_ib_dev {int ib_dev; int dev; } ;
struct ib_smp {int base_version; int class_version; int data; int attr_mod; int attr_id; int method; int mgmt_class; } ;


 int GFP_KERNEL ;
 int IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 int IB_MGMT_METHOD_GET ;
 int IB_SMP_ATTR_GUID_INFO ;
 int MLX4_MAD_IFC_IGNORE_KEYS ;
 int MLX4_MAD_IFC_NET_VIEW ;
 int cpu_to_be32 (int) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 int memset (struct ib_smp*,int ,int) ;
 scalar_t__ mlx4_MAD_IFC (struct mlx4_ib_dev*,int,int ,int *,int *,struct ib_smp*,struct ib_smp*) ;
 int mlx4_ib_notify_slaves_on_guid_change (struct mlx4_ib_dev*,int,int ,int *) ;
 int mlx4_ib_update_cache_on_guid_change (struct mlx4_ib_dev*,int,int ,int *) ;
 int mlx4_ib_warn (int *,char*) ;
 int mlx4_is_master (int ) ;
 int mlx4_is_mfunc (int ) ;

__attribute__((used)) static void handle_slaves_guid_change(struct mlx4_ib_dev *dev, u8 port_num,
          u32 guid_tbl_blk_num, u32 change_bitmap)
{
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 u16 i;

 if (!mlx4_is_mfunc(dev->dev) || !mlx4_is_master(dev->dev))
  return;

 in_mad = kmalloc(sizeof *in_mad, GFP_KERNEL);
 out_mad = kmalloc(sizeof *out_mad, GFP_KERNEL);
 if (!in_mad || !out_mad) {
  mlx4_ib_warn(&dev->ib_dev, "failed to allocate memory for guid info mads\n");
  goto out;
 }

 guid_tbl_blk_num *= 4;

 for (i = 0; i < 4; i++) {
  if (change_bitmap && (!((change_bitmap >> (8 * i)) & 0xff)))
   continue;
  memset(in_mad, 0, sizeof *in_mad);
  memset(out_mad, 0, sizeof *out_mad);

  in_mad->base_version = 1;
  in_mad->mgmt_class = IB_MGMT_CLASS_SUBN_LID_ROUTED;
  in_mad->class_version = 1;
  in_mad->method = IB_MGMT_METHOD_GET;
  in_mad->attr_id = IB_SMP_ATTR_GUID_INFO;
  in_mad->attr_mod = cpu_to_be32(guid_tbl_blk_num + i);

  if (mlx4_MAD_IFC(dev,
     MLX4_MAD_IFC_IGNORE_KEYS | MLX4_MAD_IFC_NET_VIEW,
     port_num, ((void*)0), ((void*)0), in_mad, out_mad)) {
   mlx4_ib_warn(&dev->ib_dev, "Failed in get GUID INFO MAD_IFC\n");
   goto out;
  }

  mlx4_ib_update_cache_on_guid_change(dev, guid_tbl_blk_num + i,
          port_num,
          (u8 *)(&((struct ib_smp *)out_mad)->data));
  mlx4_ib_notify_slaves_on_guid_change(dev, guid_tbl_blk_num + i,
           port_num,
           (u8 *)(&((struct ib_smp *)out_mad)->data));
 }

out:
 kfree(in_mad);
 kfree(out_mad);
 return;
}
