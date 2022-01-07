
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {unsigned long iov_len; scalar_t__ iov_base; } ;


 unsigned long const PAGE_MASK ;
 unsigned long const PAGE_SHIFT ;

__attribute__((used)) static int ipath_user_sdma_num_pages(const struct iovec *iov)
{
 const unsigned long addr = (unsigned long) iov->iov_base;
 const unsigned long len = iov->iov_len;
 const unsigned long spage = addr & PAGE_MASK;
 const unsigned long epage = (addr + len - 1) & PAGE_MASK;

 return 1 + ((epage - spage) >> PAGE_SHIFT);
}
