
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct mlx4_mac_table {int* refs; scalar_t__ total; scalar_t__ max; int mutex; scalar_t__* entries; } ;
struct mlx4_port_info {struct mlx4_mac_table mac_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;


 int ENOSPC ;
 int MLX4_MAC_MASK ;
 int MLX4_MAC_VALID ;
 int MLX4_MAX_MAC_NUM ;
 int be64_to_cpu (scalar_t__) ;
 scalar_t__ cpu_to_be64 (int) ;
 int mlx4_dbg (struct mlx4_dev*,char*,int,...) ;
 int mlx4_err (struct mlx4_dev*,char*,unsigned long long) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_set_port_mac_table (struct mlx4_dev*,size_t,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int __mlx4_register_mac(struct mlx4_dev *dev, u8 port, u64 mac)
{
 struct mlx4_port_info *info = &mlx4_priv(dev)->port[port];
 struct mlx4_mac_table *table = &info->mac_table;
 int i, err = 0;
 int free = -1;

 mlx4_dbg(dev, "Registering MAC: 0x%llx for port %d\n",
   (unsigned long long) mac, port);

 mutex_lock(&table->mutex);
 for (i = 0; i < MLX4_MAX_MAC_NUM; i++) {
  if (free < 0 && !table->entries[i]) {
   free = i;
   continue;
  }

  if (mac == (MLX4_MAC_MASK & be64_to_cpu(table->entries[i]))) {

   err = i;
   ++table->refs[i];
   goto out;
  }
 }

 mlx4_dbg(dev, "Free MAC index is %d\n", free);

 if (table->total == table->max) {

  err = -ENOSPC;
  goto out;
 }


 table->entries[free] = cpu_to_be64(mac | MLX4_MAC_VALID);

 err = mlx4_set_port_mac_table(dev, port, table->entries);
 if (unlikely(err)) {
  mlx4_err(dev, "Failed adding MAC: 0x%llx\n",
    (unsigned long long) mac);
  table->entries[free] = 0;
  goto out;
 }
 table->refs[free] = 1;
 err = free;
 ++table->total;
out:
 mutex_unlock(&table->mutex);
 return err;
}
