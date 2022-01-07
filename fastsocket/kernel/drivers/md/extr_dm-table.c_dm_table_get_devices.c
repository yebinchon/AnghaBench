
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dm_table {struct list_head devices; } ;



struct list_head *dm_table_get_devices(struct dm_table *t)
{
 return &t->devices;
}
