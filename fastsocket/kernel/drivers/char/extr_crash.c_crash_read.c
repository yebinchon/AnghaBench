
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct page {int dummy; } ;
struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef size_t loff_t ;


 size_t EFAULT ;
 size_t EINVAL ;
 size_t PAGE_SHIFT ;
 scalar_t__ copy_to_user (char*,void*,size_t) ;
 void* map_virtual (size_t,struct page**) ;
 int unmap_virtual (struct page*) ;

__attribute__((used)) static ssize_t
crash_read(struct file *file, char *buf, size_t count, loff_t *poff)
{
 void *vaddr;
 struct page *page;
 u64 offset;
 ssize_t read;

 offset = *poff;
 if (offset >> PAGE_SHIFT != (offset+count-1) >> PAGE_SHIFT)
  return -EINVAL;

 vaddr = map_virtual(offset, &page);
 if (!vaddr)
  return -EFAULT;

 if (copy_to_user(buf, vaddr, count)) {
  unmap_virtual(page);
  return -EFAULT;
 }
 unmap_virtual(page);

 read = count;
 *poff += read;
 return read;
}
