
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline void sgtable_drain_kmalloc(struct sg_table *sgt)
{




 BUG_ON(!sgt);
}
