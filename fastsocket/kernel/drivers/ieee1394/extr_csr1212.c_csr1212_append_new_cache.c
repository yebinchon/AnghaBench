
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct csr1212_csr_rom_cache {struct csr1212_csr_rom_cache* next; struct csr1212_csr_rom_cache* prev; int data; TYPE_4__* ext_rom; } ;
struct csr1212_csr {int max_rom; struct csr1212_csr_rom_cache* cache_tail; int private; TYPE_1__* ops; int root_kv; } ;
struct TYPE_8__ {int len; int data; } ;
struct TYPE_9__ {TYPE_2__ leaf; } ;
struct TYPE_10__ {TYPE_3__ value; scalar_t__ offset; } ;
struct TYPE_7__ {scalar_t__ (* allocate_addr_range ) (size_t,int,int ) ;int (* release_addr ) (scalar_t__,int ) ;} ;


 int BUG_ON (int) ;
 int CSR1212_FREE (struct csr1212_csr_rom_cache*) ;
 scalar_t__ CSR1212_INVALID_ADDR_SPACE ;
 int CSR1212_KV_ID_EXTENDED_ROM ;
 int CSR1212_KV_TYPE_LEAF ;
 scalar_t__ CSR1212_REGISTER_SPACE_BASE ;
 scalar_t__ CSR1212_SUCCESS ;
 int ENOMEM ;
 scalar_t__ csr1212_attach_keyval_to_directory (int ,TYPE_4__*) ;
 TYPE_4__* csr1212_new_keyval (int ,int ) ;
 int csr1212_release_keyval (TYPE_4__*) ;
 struct csr1212_csr_rom_cache* csr1212_rom_cache_malloc (scalar_t__,size_t) ;
 scalar_t__ stub1 (size_t,int,int ) ;
 int stub2 (scalar_t__,int ) ;
 int stub3 (scalar_t__,int ) ;
 int stub4 (scalar_t__,int ) ;
 int stub5 (scalar_t__,int ) ;

__attribute__((used)) static int csr1212_append_new_cache(struct csr1212_csr *csr, size_t romsize)
{
 struct csr1212_csr_rom_cache *cache;
 u64 csr_addr;

 BUG_ON(!csr || !csr->ops || !csr->ops->allocate_addr_range ||
        !csr->ops->release_addr || csr->max_rom < 1);


 romsize = (romsize + (csr->max_rom - 1)) & ~(csr->max_rom - 1);

 csr_addr = csr->ops->allocate_addr_range(romsize, csr->max_rom,
       csr->private);
 if (csr_addr == CSR1212_INVALID_ADDR_SPACE)
  return -ENOMEM;

 if (csr_addr < CSR1212_REGISTER_SPACE_BASE) {

  csr->ops->release_addr(csr_addr, csr->private);
  return -ENOMEM;
 }

 cache = csr1212_rom_cache_malloc(csr_addr - CSR1212_REGISTER_SPACE_BASE,
      romsize);
 if (!cache) {
  csr->ops->release_addr(csr_addr, csr->private);
  return -ENOMEM;
 }

 cache->ext_rom = csr1212_new_keyval(CSR1212_KV_TYPE_LEAF,
         CSR1212_KV_ID_EXTENDED_ROM);
 if (!cache->ext_rom) {
  csr->ops->release_addr(csr_addr, csr->private);
  CSR1212_FREE(cache);
  return -ENOMEM;
 }

 if (csr1212_attach_keyval_to_directory(csr->root_kv, cache->ext_rom) !=
     CSR1212_SUCCESS) {
  csr1212_release_keyval(cache->ext_rom);
  csr->ops->release_addr(csr_addr, csr->private);
  CSR1212_FREE(cache);
  return -ENOMEM;
 }
 cache->ext_rom->offset = csr_addr - CSR1212_REGISTER_SPACE_BASE;
 cache->ext_rom->value.leaf.len = -1;
 cache->ext_rom->value.leaf.data = cache->data;


 cache->prev = csr->cache_tail;
 csr->cache_tail->next = cache;
 csr->cache_tail = cache;
 return CSR1212_SUCCESS;
}
