
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_type {int dummy; } ;
struct dm_table {struct target_type* immutable_target_type; } ;



struct target_type *dm_table_get_immutable_target_type(struct dm_table *t)
{
 return t->immutable_target_type;
}
