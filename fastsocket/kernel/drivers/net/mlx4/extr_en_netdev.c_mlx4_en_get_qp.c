
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct mlx4_mac_entry {size_t* mac; int hlist; int reg_id; } ;
struct mlx4_en_priv {int base_qpn; int port; TYPE_2__* dev; int * mac_hash; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {struct mlx4_dev* dev; } ;
struct TYPE_3__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {int dev_addr; } ;


 int DRV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t MLX4_EN_MAC_HASH_IDX ;
 scalar_t__ MLX4_STEERING_MODE_A0 ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int) ;
 int en_err (struct mlx4_en_priv*,char*,...) ;
 int hlist_add_head_rcu (int *,int *) ;
 struct mlx4_mac_entry* kmalloc (int,int ) ;
 int memcpy (size_t*,int,int) ;
 int mlx4_en_mac_to_u64 (int) ;
 int mlx4_en_uc_steer_add (struct mlx4_en_priv*,int,int*,int *) ;
 int mlx4_en_uc_steer_release (struct mlx4_en_priv*,int,int,int ) ;
 int mlx4_get_base_qpn (struct mlx4_dev*,int ) ;
 int mlx4_qp_release_range (struct mlx4_dev*,int,int) ;
 int mlx4_qp_reserve_range (struct mlx4_dev*,int,int,int*) ;
 int mlx4_register_mac (struct mlx4_dev*,int ,int ) ;
 int mlx4_unregister_mac (struct mlx4_dev*,int ,int ) ;

__attribute__((used)) static int mlx4_en_get_qp(struct mlx4_en_priv *priv)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_dev *dev = mdev->dev;
 struct mlx4_mac_entry *entry;
 int index = 0;
 int err = 0;
 u64 reg_id;
 int *qpn = &priv->base_qpn;
 u64 mac = mlx4_en_mac_to_u64(priv->dev->dev_addr);

 en_dbg(DRV, priv, "Registering MAC: %pM for adding\n",
        priv->dev->dev_addr);
 index = mlx4_register_mac(dev, priv->port, mac);
 if (index < 0) {
  err = index;
  en_err(priv, "Failed adding MAC: %pM\n",
         priv->dev->dev_addr);
  return err;
 }

 if (dev->caps.steering_mode == MLX4_STEERING_MODE_A0) {
  int base_qpn = mlx4_get_base_qpn(dev, priv->port);
  *qpn = base_qpn + index;
  return 0;
 }

 err = mlx4_qp_reserve_range(dev, 1, 1, qpn);
 en_dbg(DRV, priv, "Reserved qp %d\n", *qpn);
 if (err) {
  en_err(priv, "Failed to reserve qp for mac registration\n");
  goto qp_err;
 }

 err = mlx4_en_uc_steer_add(priv, priv->dev->dev_addr, qpn, &reg_id);
 if (err)
  goto steer_err;

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry) {
  err = -ENOMEM;
  goto alloc_err;
 }
 memcpy(entry->mac, priv->dev->dev_addr, sizeof(entry->mac));
 entry->reg_id = reg_id;

 hlist_add_head_rcu(&entry->hlist,
      &priv->mac_hash[entry->mac[MLX4_EN_MAC_HASH_IDX]]);

 return 0;

alloc_err:
 mlx4_en_uc_steer_release(priv, priv->dev->dev_addr, *qpn, reg_id);

steer_err:
 mlx4_qp_release_range(dev, *qpn, 1);

qp_err:
 mlx4_unregister_mac(dev, priv->port, mac);
 return err;
}
