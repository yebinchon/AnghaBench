
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct shadow_spine {struct dm_block** nodes; TYPE_3__* info; } ;
struct dm_block {int dummy; } ;
struct TYPE_5__ {void* flags; int value_size; int max_entries; void* nr_entries; } ;
struct btree_node {int * keys; TYPE_1__ header; } ;
typedef int dm_block_t ;
typedef int __le64 ;
struct TYPE_6__ {int size; } ;
struct TYPE_7__ {TYPE_2__ value_type; } ;


 int INTERNAL_NODE ;
 int __dm_bless_for_disk (int *) ;
 void* cpu_to_le32 (unsigned int) ;
 int cpu_to_le64 (int ) ;
 struct btree_node* dm_block_data (struct dm_block*) ;
 int dm_block_location (struct dm_block*) ;
 int insert_at (int,struct btree_node*,unsigned int,scalar_t__,int *) ;
 int le32_to_cpu (void*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memcpy (int *,int *,size_t) ;
 int memcpy_disk (int *,int *,int) ;
 int new_block (TYPE_3__*,struct dm_block**) ;
 struct dm_block* shadow_current (struct shadow_spine*) ;
 struct dm_block* shadow_parent (struct shadow_spine*) ;
 int unlock_block (TYPE_3__*,struct dm_block*) ;
 int * value_ptr (struct btree_node*,unsigned int) ;

__attribute__((used)) static int btree_split_sibling(struct shadow_spine *s, dm_block_t root,
          unsigned parent_index, uint64_t key)
{
 int r;
 size_t size;
 unsigned nr_left, nr_right;
 struct dm_block *left, *right, *parent;
 struct btree_node *ln, *rn, *pn;
 __le64 location;

 left = shadow_current(s);

 r = new_block(s->info, &right);
 if (r < 0)
  return r;

 ln = dm_block_data(left);
 rn = dm_block_data(right);

 nr_left = le32_to_cpu(ln->header.nr_entries) / 2;
 nr_right = le32_to_cpu(ln->header.nr_entries) - nr_left;

 ln->header.nr_entries = cpu_to_le32(nr_left);

 rn->header.flags = ln->header.flags;
 rn->header.nr_entries = cpu_to_le32(nr_right);
 rn->header.max_entries = ln->header.max_entries;
 rn->header.value_size = ln->header.value_size;
 memcpy(rn->keys, ln->keys + nr_left, nr_right * sizeof(rn->keys[0]));

 size = le32_to_cpu(ln->header.flags) & INTERNAL_NODE ?
  sizeof(uint64_t) : s->info->value_type.size;
 memcpy(value_ptr(rn, 0), value_ptr(ln, nr_left),
        size * nr_right);




 parent = shadow_parent(s);

 pn = dm_block_data(parent);
 location = cpu_to_le64(dm_block_location(left));
 __dm_bless_for_disk(&location);
 memcpy_disk(value_ptr(pn, parent_index),
      &location, sizeof(__le64));

 location = cpu_to_le64(dm_block_location(right));
 __dm_bless_for_disk(&location);

 r = insert_at(sizeof(__le64), pn, parent_index + 1,
        le64_to_cpu(rn->keys[0]), &location);
 if (r)
  return r;

 if (key < le64_to_cpu(rn->keys[0])) {
  unlock_block(s->info, right);
  s->nodes[1] = left;
 } else {
  unlock_block(s->info, left);
  s->nodes[1] = right;
 }

 return 0;
}
