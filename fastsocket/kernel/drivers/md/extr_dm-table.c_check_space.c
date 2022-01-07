
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int num_targets; int num_allocated; } ;


 int alloc_targets (struct dm_table*,int) ;

__attribute__((used)) static inline int check_space(struct dm_table *t)
{
 if (t->num_targets >= t->num_allocated)
  return alloc_targets(t, t->num_allocated * 2);

 return 0;
}
