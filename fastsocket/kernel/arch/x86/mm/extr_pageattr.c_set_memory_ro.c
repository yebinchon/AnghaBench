
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PAGE_RW ;
 int __pgprot (int ) ;
 int change_page_attr_clear (unsigned long*,int,int ,int ) ;

int set_memory_ro(unsigned long addr, int numpages)
{
 return change_page_attr_clear(&addr, numpages, __pgprot(_PAGE_RW), 0);
}
