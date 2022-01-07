
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct mlx4_vlan_table {int mutex; int total; scalar_t__* entries; scalar_t__* refs; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {struct mlx4_vlan_table vlan_table; } ;


 int MLX4_VLAN_REGULAR ;
 int mlx4_dbg (struct mlx4_dev*,char*,int) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_set_port_vlan_table (struct mlx4_dev*,size_t,scalar_t__*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void __mlx4_unregister_vlan(struct mlx4_dev *dev, u8 port, int index)
{
 struct mlx4_vlan_table *table = &mlx4_priv(dev)->port[port].vlan_table;

 if (index < MLX4_VLAN_REGULAR) {
  mlx4_warn(dev, "Trying to free special vlan index %d\n", index);
  return;
 }

 mutex_lock(&table->mutex);
 if (!table->refs[index]) {
  mlx4_warn(dev, "No vlan entry for index %d\n", index);
  goto out;
 }
 if (--table->refs[index]) {
  mlx4_dbg(dev, "Have more references for index %d,"
    "no need to modify vlan table\n", index);
  goto out;
 }
 table->entries[index] = 0;
 mlx4_set_port_vlan_table(dev, port, table->entries);
 --table->total;
out:
 mutex_unlock(&table->mutex);
}
