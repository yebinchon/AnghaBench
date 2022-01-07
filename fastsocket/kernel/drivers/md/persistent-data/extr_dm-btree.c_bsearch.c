
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int nr_entries; } ;
struct btree_node {int * keys; TYPE_1__ header; } ;


 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static int bsearch(struct btree_node *n, uint64_t key, int want_hi)
{
 int lo = -1, hi = le32_to_cpu(n->header.nr_entries);

 while (hi - lo > 1) {
  int mid = lo + ((hi - lo) / 2);
  uint64_t mid_key = le64_to_cpu(n->keys[mid]);

  if (mid_key == key)
   return mid;

  if (mid_key < key)
   lo = mid;
  else
   hi = mid;
 }

 return want_hi ? hi : lo;
}
