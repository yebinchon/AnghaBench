
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {int buf; } ;
struct mlx4_buf {int nbufs; TYPE_2__ direct; TYPE_1__* page_list; } ;
struct TYPE_3__ {int buf; } ;


 int BITS_PER_LONG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 int VM_MAP ;
 int kfree (struct page**) ;
 struct page** kmalloc (int,int ) ;
 struct page* virt_to_page (int ) ;
 int vmap (struct page**,int,int ,int ) ;

int mlx4_en_map_buffer(struct mlx4_buf *buf)
{
 struct page **pages;
 int i;

 if (BITS_PER_LONG == 64 || buf->nbufs == 1)
  return 0;

 pages = kmalloc(sizeof *pages * buf->nbufs, GFP_KERNEL);
 if (!pages)
  return -ENOMEM;

 for (i = 0; i < buf->nbufs; ++i)
  pages[i] = virt_to_page(buf->page_list[i].buf);

 buf->direct.buf = vmap(pages, buf->nbufs, VM_MAP, PAGE_KERNEL);
 kfree(pages);
 if (!buf->direct.buf)
  return -ENOMEM;

 return 0;
}
