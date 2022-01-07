
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct iovec {scalar_t__ iov_base; scalar_t__ iov_len; } ;
struct dma_pinned_list {int nr_iovecs; struct dma_page_list* page_list; } ;
struct dma_page_list {int nr_pages; struct page** pages; scalar_t__ base_address; } ;
struct TYPE_5__ {int mmap_sem; } ;
struct TYPE_4__ {TYPE_2__* mm; } ;


 int GFP_KERNEL ;
 int KERNEL_DS ;
 int VERIFY_WRITE ;
 int access_ok (int ,scalar_t__,scalar_t__) ;
 TYPE_1__* current ;
 int dma_unpin_iovec_pages (struct dma_pinned_list*) ;
 int down_read (int *) ;
 int get_fs () ;
 int get_user_pages (TYPE_1__*,TYPE_2__*,unsigned long,int,int,int ,struct page**,int *) ;
 struct dma_pinned_list* kmalloc (int,int ) ;
 int num_pages_spanned (struct iovec*) ;
 scalar_t__ segment_eq (int ,int ) ;
 int up_read (int *) ;

struct dma_pinned_list *dma_pin_iovec_pages(struct iovec *iov, size_t len)
{
 struct dma_pinned_list *local_list;
 struct page **pages;
 int i;
 int ret;
 int nr_iovecs = 0;
 int iovec_len_used = 0;
 int iovec_pages_used = 0;


 if (segment_eq(get_fs(), KERNEL_DS))
  return ((void*)0);


 do {
  iovec_len_used += iov[nr_iovecs].iov_len;
  iovec_pages_used += num_pages_spanned(&iov[nr_iovecs]);
  nr_iovecs++;
 } while (iovec_len_used < len);


 local_list = kmalloc(sizeof(*local_list)
  + (nr_iovecs * sizeof (struct dma_page_list))
  + (iovec_pages_used * sizeof (struct page*)), GFP_KERNEL);
 if (!local_list)
  goto out;


 pages = (struct page **) &local_list->page_list[nr_iovecs];

 local_list->nr_iovecs = 0;

 for (i = 0; i < nr_iovecs; i++) {
  struct dma_page_list *page_list = &local_list->page_list[i];

  len -= iov[i].iov_len;

  if (!access_ok(VERIFY_WRITE, iov[i].iov_base, iov[i].iov_len))
   goto unpin;

  page_list->nr_pages = num_pages_spanned(&iov[i]);
  page_list->base_address = iov[i].iov_base;

  page_list->pages = pages;
  pages += page_list->nr_pages;


  down_read(&current->mm->mmap_sem);
  ret = get_user_pages(
   current,
   current->mm,
   (unsigned long) iov[i].iov_base,
   page_list->nr_pages,
   1,
   0,
   page_list->pages,
   ((void*)0));
  up_read(&current->mm->mmap_sem);

  if (ret != page_list->nr_pages)
   goto unpin;

  local_list->nr_iovecs = i + 1;
 }

 return local_list;

unpin:
 dma_unpin_iovec_pages(local_list);
out:
 return ((void*)0);
}
