
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 unsigned long const PAGE_SIZE ;

__attribute__((used)) static int ipath_user_sdma_page_length(unsigned long addr, unsigned long len)
{
 const unsigned long offset = addr & ~PAGE_MASK;

 return ((offset + len) > PAGE_SIZE) ? (PAGE_SIZE - offset) : len;
}
