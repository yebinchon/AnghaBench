
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_bufio_client {scalar_t__ block_size; int pages_per_block_bits; } ;
typedef int gfp_t ;
typedef enum data_mode { ____Placeholder_data_mode } data_mode ;
struct TYPE_2__ {unsigned int flags; } ;


 int DATA_MODE_GET_FREE_PAGES ;
 int DATA_MODE_SLAB ;
 int DATA_MODE_VMALLOC ;
 scalar_t__ DM_BUFIO_BLOCK_SIZE_GFP_LIMIT ;
 scalar_t__ DM_BUFIO_BLOCK_SIZE_SLAB_LIMIT ;
 int DM_BUFIO_CACHE (struct dm_bufio_client*) ;
 int PAGE_KERNEL ;
 unsigned int PF_MEMALLOC ;
 int __GFP_HIGHMEM ;
 int __GFP_NORETRY ;
 scalar_t__ __get_free_pages (int,int ) ;
 void* __vmalloc (scalar_t__,int,int ) ;
 TYPE_1__* current ;
 void* kmem_cache_alloc (int ,int) ;

__attribute__((used)) static void *alloc_buffer_data(struct dm_bufio_client *c, gfp_t gfp_mask,
          enum data_mode *data_mode)
{
 unsigned memalloc_flag;
 void *ptr;

 if (c->block_size <= DM_BUFIO_BLOCK_SIZE_SLAB_LIMIT) {
  *data_mode = DATA_MODE_SLAB;
  return kmem_cache_alloc(DM_BUFIO_CACHE(c), gfp_mask);
 }

 if (c->block_size <= DM_BUFIO_BLOCK_SIZE_GFP_LIMIT &&
     gfp_mask & __GFP_NORETRY) {
  *data_mode = DATA_MODE_GET_FREE_PAGES;
  return (void *)__get_free_pages(gfp_mask,
      c->pages_per_block_bits);
 }

 *data_mode = DATA_MODE_VMALLOC;
 if (gfp_mask & __GFP_NORETRY) {
  memalloc_flag = current->flags & PF_MEMALLOC;
  current->flags |= PF_MEMALLOC;
 }

 ptr = __vmalloc(c->block_size, gfp_mask | __GFP_HIGHMEM, PAGE_KERNEL);

 if (gfp_mask & __GFP_NORETRY)
  current->flags = (current->flags & ~PF_MEMALLOC) | memalloc_flag;

 return ptr;
}
