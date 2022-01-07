
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pglist_data {unsigned long node_start_pfn; unsigned long node_spanned_pages; } ;
struct node_active_region {unsigned long start_pfn; unsigned long end_pfn; int nid; } ;
struct TYPE_5__ {int cnt; TYPE_1__* region; } ;
struct TYPE_6__ {TYPE_2__ reserved; } ;
struct TYPE_4__ {unsigned long base; unsigned long size; } ;


 int BOOTMEM_DEFAULT ;
 struct pglist_data* NODE_DATA (int) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PFN_UP (unsigned long) ;
 int dbg (char*,unsigned long,unsigned long,int) ;
 int get_node_active_region (unsigned long,struct node_active_region*) ;
 TYPE_3__ lmb ;
 int reserve_bootmem_node (struct pglist_data*,unsigned long,unsigned long,int ) ;

__attribute__((used)) static void mark_reserved_regions_for_nid(int nid)
{
 struct pglist_data *node = NODE_DATA(nid);
 int i;

 for (i = 0; i < lmb.reserved.cnt; i++) {
  unsigned long physbase = lmb.reserved.region[i].base;
  unsigned long size = lmb.reserved.region[i].size;
  unsigned long start_pfn = physbase >> PAGE_SHIFT;
  unsigned long end_pfn = PFN_UP(physbase + size);
  struct node_active_region node_ar;
  unsigned long node_end_pfn = node->node_start_pfn +
          node->node_spanned_pages;
  if (end_pfn <= node->node_start_pfn ||
      start_pfn >= node_end_pfn)
   continue;

  get_node_active_region(start_pfn, &node_ar);
  while (start_pfn < end_pfn &&
   node_ar.start_pfn < node_ar.end_pfn) {
   unsigned long reserve_size = size;




   if (end_pfn > node_ar.end_pfn)
    reserve_size = (node_ar.end_pfn << PAGE_SHIFT)
     - physbase;




   if (node_ar.nid == nid) {
    dbg("reserve_bootmem %lx %lx nid=%d\n",
     physbase, reserve_size, node_ar.nid);
    reserve_bootmem_node(NODE_DATA(node_ar.nid),
      physbase, reserve_size,
      BOOTMEM_DEFAULT);
   }




   if (end_pfn <= node_ar.end_pfn)
    break;






   start_pfn = node_ar.end_pfn;
   physbase = start_pfn << PAGE_SHIFT;
   size = size - reserve_size;
   get_node_active_region(start_pfn, &node_ar);
  }
 }
}
