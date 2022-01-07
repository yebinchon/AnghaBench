
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int __u32 ;


 unsigned long PAGE_MASK ;
 int sun4c_flush_page (unsigned long) ;
 int sun4c_lockarea (char*,unsigned long) ;
 int virt_addr_valid (unsigned long) ;

__attribute__((used)) static __u32 sun4c_get_scsi_one(struct device *dev, char *bufptr, unsigned long len)
{
 unsigned long page;

 page = ((unsigned long)bufptr) & PAGE_MASK;
 if (!virt_addr_valid(page)) {
  sun4c_flush_page(page);
  return (__u32)bufptr;
 }
 return (__u32)sun4c_lockarea(bufptr, len);
}
