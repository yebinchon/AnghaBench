
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_pool {int type; int dev_name; } ;


 int IS_UC ;
 int IS_WC ;
 int pr_err (char*,int ,unsigned int) ;
 int set_pages_array_uc (struct page**,unsigned int) ;
 int set_pages_array_wc (struct page**,unsigned int) ;

__attribute__((used)) static int ttm_set_pages_caching(struct dma_pool *pool,
     struct page **pages, unsigned cpages)
{
 int r = 0;

 if (pool->type & IS_UC) {
  r = set_pages_array_uc(pages, cpages);
  if (r)
   pr_err("%s: Failed to set %d pages to uc!\n",
          pool->dev_name, cpages);
 }
 if (pool->type & IS_WC) {
  r = set_pages_array_wc(pages, cpages);
  if (r)
   pr_err("%s: Failed to set %d pages to wc!\n",
          pool->dev_name, cpages);
 }
 return r;
}
