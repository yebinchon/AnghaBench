
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct dm_transaction_manager {int dummy; } ;
struct dm_btree_value_type {int context; int (* inc ) (int ,int ) ;} ;
struct TYPE_2__ {int flags; int nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;


 int INTERNAL_NODE ;
 int dm_tm_inc (struct dm_transaction_manager*,int ) ;
 int le32_to_cpu (int ) ;
 int stub1 (int ,int ) ;
 int value64 (struct btree_node*,unsigned int) ;
 int value_ptr (struct btree_node*,unsigned int) ;

void inc_children(struct dm_transaction_manager *tm, struct btree_node *n,
    struct dm_btree_value_type *vt)
{
 unsigned i;
 uint32_t nr_entries = le32_to_cpu(n->header.nr_entries);

 if (le32_to_cpu(n->header.flags) & INTERNAL_NODE)
  for (i = 0; i < nr_entries; i++)
   dm_tm_inc(tm, value64(n, i));
 else if (vt->inc)
  for (i = 0; i < nr_entries; i++)
   vt->inc(vt->context, value_ptr(n, i));
}
