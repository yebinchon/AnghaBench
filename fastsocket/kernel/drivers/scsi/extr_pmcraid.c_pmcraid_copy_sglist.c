
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int length; } ;
struct pmcraid_sglist {int order; struct scatterlist* scatterlist; } ;
struct page {int dummy; } ;


 int DMA_TO_DEVICE ;
 int EFAULT ;
 int PAGE_SIZE ;
 int __copy_from_user (void*,void*,int) ;
 int __copy_to_user (void*,void*,int) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int pmcraid_err (char*) ;
 struct page* sg_page (struct scatterlist*) ;

__attribute__((used)) static int pmcraid_copy_sglist(
 struct pmcraid_sglist *sglist,
 unsigned long buffer,
 u32 len,
 int direction
)
{
 struct scatterlist *scatterlist;
 void *kaddr;
 int bsize_elem;
 int i;
 int rc = 0;


 bsize_elem = PAGE_SIZE * (1 << sglist->order);

 scatterlist = sglist->scatterlist;

 for (i = 0; i < (len / bsize_elem); i++, buffer += bsize_elem) {
  struct page *page = sg_page(&scatterlist[i]);

  kaddr = kmap(page);
  if (direction == DMA_TO_DEVICE)
   rc = __copy_from_user(kaddr,
           (void *)buffer,
           bsize_elem);
  else
   rc = __copy_to_user((void *)buffer, kaddr, bsize_elem);

  kunmap(page);

  if (rc) {
   pmcraid_err("failed to copy user data into sg list\n");
   return -EFAULT;
  }

  scatterlist[i].length = bsize_elem;
 }

 if (len % bsize_elem) {
  struct page *page = sg_page(&scatterlist[i]);

  kaddr = kmap(page);

  if (direction == DMA_TO_DEVICE)
   rc = __copy_from_user(kaddr,
           (void *)buffer,
           len % bsize_elem);
  else
   rc = __copy_to_user((void *)buffer,
         kaddr,
         len % bsize_elem);

  kunmap(page);

  scatterlist[i].length = len % bsize_elem;
 }

 if (rc) {
  pmcraid_err("failed to copy user data into sg list\n");
  rc = -EFAULT;
 }

 return rc;
}
