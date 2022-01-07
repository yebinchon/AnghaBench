
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt1_table_page {int * buf_pfns; } ;
struct pt1_table {int * bufs; int addr; struct pt1_table_page* page; } ;
struct pt1 {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PT1_NR_BUFS ;
 int cpu_to_le32 (int ) ;
 struct pt1_table_page* pt1_alloc_page (struct pt1*,int *,int *) ;
 int pt1_cleanup_buffer (struct pt1*,int *) ;
 int pt1_free_page (struct pt1*,struct pt1_table_page*,int ) ;
 int pt1_increment_table_count (struct pt1*) ;
 int pt1_init_buffer (struct pt1*,int *,int *) ;

__attribute__((used)) static int
pt1_init_table(struct pt1 *pt1, struct pt1_table *table, u32 *pfnp)
{
 struct pt1_table_page *page;
 dma_addr_t addr;
 int i, ret;
 u32 buf_pfn;

 page = pt1_alloc_page(pt1, &addr, pfnp);
 if (page == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < PT1_NR_BUFS; i++) {
  ret = pt1_init_buffer(pt1, &table->bufs[i], &buf_pfn);
  if (ret < 0)
   goto err;

  page->buf_pfns[i] = cpu_to_le32(buf_pfn);
 }

 pt1_increment_table_count(pt1);
 table->page = page;
 table->addr = addr;
 return 0;

err:
 while (i--)
  pt1_cleanup_buffer(pt1, &table->bufs[i]);

 pt1_free_page(pt1, page, addr);
 return ret;
}
