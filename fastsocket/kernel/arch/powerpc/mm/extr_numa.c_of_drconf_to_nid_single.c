
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_drconf_cell {int flags; int aa_index; } ;
struct assoc_arrays {int array_sz; int n_arrays; int* arrays; } ;


 int DRCONF_MEM_AI_INVALID ;
 int MAX_NUMNODES ;
 int min_common_depth ;

__attribute__((used)) static int of_drconf_to_nid_single(struct of_drconf_cell *drmem,
       struct assoc_arrays *aa)
{
 int default_nid = 0;
 int nid = default_nid;
 int index;

 if (min_common_depth > 0 && min_common_depth <= aa->array_sz &&
     !(drmem->flags & DRCONF_MEM_AI_INVALID) &&
     drmem->aa_index < aa->n_arrays) {
  index = drmem->aa_index * aa->array_sz + min_common_depth - 1;
  nid = aa->arrays[index];

  if (nid == 0xffff || nid >= MAX_NUMNODES)
   nid = default_nid;
 }

 return nid;
}
