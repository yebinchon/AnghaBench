
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct huge_bootmem_page {struct hstate* hstate; int list; } ;
struct hstate {int dummy; } ;


 scalar_t__* gpage_freearray ;
 int huge_boot_pages ;
 int list_add (int *,int *) ;
 size_t nr_gpages ;
 struct huge_bootmem_page* phys_to_virt (scalar_t__) ;

int alloc_bootmem_huge_page(struct hstate *hstate)
{
 struct huge_bootmem_page *m;
 if (nr_gpages == 0)
  return 0;
 m = phys_to_virt(gpage_freearray[--nr_gpages]);
 gpage_freearray[nr_gpages] = 0;
 list_add(&m->list, &huge_boot_pages);
 m->hstate = hstate;
 return 1;
}
