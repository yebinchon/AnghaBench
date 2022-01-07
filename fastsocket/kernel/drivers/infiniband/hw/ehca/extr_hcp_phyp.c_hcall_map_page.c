
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EHCA_PAGESIZE ;
 int ioremap (int ,int ) ;

u64 hcall_map_page(u64 physaddr)
{
 return (u64)ioremap(physaddr, EHCA_PAGESIZE);
}
