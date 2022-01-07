
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct mlx4_mac_table {int mutex; int total; scalar_t__* entries; scalar_t__* refs; } ;
struct mlx4_port_info {struct mlx4_mac_table mac_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;


 int find_index (struct mlx4_dev*,struct mlx4_mac_table*,int ) ;
 int mlx4_dbg (struct mlx4_dev*,char*,int) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_set_port_mac_table (struct mlx4_dev*,size_t,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ validate_index (struct mlx4_dev*,struct mlx4_mac_table*,int) ;

void __mlx4_unregister_mac(struct mlx4_dev *dev, u8 port, u64 mac)
{
 struct mlx4_port_info *info = &mlx4_priv(dev)->port[port];
 struct mlx4_mac_table *table = &info->mac_table;
 int index;

 mutex_lock(&table->mutex);
 index = find_index(dev, table, mac);

 if (validate_index(dev, table, index))
  goto out;
 if (--table->refs[index]) {
  mlx4_dbg(dev, "Have more references for index %d,"
    "no need to modify mac table\n", index);
  goto out;
 }

 table->entries[index] = 0;
 mlx4_set_port_mac_table(dev, port, table->entries);
 --table->total;
out:
 mutex_unlock(&table->mutex);
}
