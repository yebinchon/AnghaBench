
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_MASK ;
 unsigned long VTD_PAGE_SHIFT ;

__attribute__((used)) static inline unsigned long aligned_nrpages(unsigned long host_addr,
         size_t size)
{
 host_addr &= ~PAGE_MASK;
 return PAGE_ALIGN(host_addr + size) >> VTD_PAGE_SHIFT;
}
