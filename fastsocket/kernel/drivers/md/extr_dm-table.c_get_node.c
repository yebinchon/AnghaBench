
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int ** index; } ;
typedef int sector_t ;


 unsigned int KEYS_PER_NODE ;

__attribute__((used)) static inline sector_t *get_node(struct dm_table *t,
     unsigned int l, unsigned int n)
{
 return t->index[l] + (n * KEYS_PER_NODE);
}
