
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 scalar_t__ Hash ;
 int _tlbie (unsigned long) ;

void flush_tlb_page_nohash(struct vm_area_struct *vma, unsigned long addr)
{
 if (Hash != 0)
  return;
 _tlbie(addr);
}
