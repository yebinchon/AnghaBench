
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int type; } ;



unsigned dm_table_get_type(struct dm_table *t)
{
 return t->type;
}
