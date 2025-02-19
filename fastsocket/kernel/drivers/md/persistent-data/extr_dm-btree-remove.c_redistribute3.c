
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dm_btree_info {int dummy; } ;
struct child {int index; } ;
struct TYPE_2__ {int max_entries; } ;
struct btree_node {int * keys; TYPE_1__ header; } ;


 int BUG_ON (int) ;
 int * key_ptr (struct btree_node*,int ) ;
 int le32_to_cpu (int ) ;
 int shift (struct btree_node*,struct btree_node*,int) ;

__attribute__((used)) static void redistribute3(struct dm_btree_info *info, struct btree_node *parent,
     struct child *l, struct child *c, struct child *r,
     struct btree_node *left, struct btree_node *center, struct btree_node *right,
     uint32_t nr_left, uint32_t nr_center, uint32_t nr_right)
{
 int s;
 uint32_t max_entries = le32_to_cpu(left->header.max_entries);
 unsigned target = (nr_left + nr_center + nr_right) / 3;
 BUG_ON(target > max_entries);

 if (nr_left < nr_right) {
  s = nr_left - target;

  if (s < 0 && nr_center < -s) {

   shift(left, center, nr_center);
   s = nr_center - target;
   shift(left, right, s);
   nr_right += s;
  } else
   shift(left, center, s);

  shift(center, right, target - nr_right);

 } else {
  s = target - nr_right;
  if (s > 0 && nr_center < s) {

   shift(center, right, nr_center);
   s = target - nr_center;
   shift(left, right, s);
   nr_left -= s;
  } else
   shift(center, right, s);

  shift(left, center, nr_left - target);
 }

 *key_ptr(parent, c->index) = center->keys[0];
 *key_ptr(parent, r->index) = right->keys[0];
}
