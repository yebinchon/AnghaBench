
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int len; } ;
struct TYPE_6__ {int len; } ;
struct TYPE_8__ {TYPE_3__ directory; TYPE_2__ leaf; } ;
struct TYPE_5__ {scalar_t__ id; int type; } ;
struct csr1212_keyval {scalar_t__ offset; struct csr1212_keyval* next; TYPE_4__ value; TYPE_1__ key; } ;
struct csr1212_csr_rom_cache {int size; scalar_t__ offset; scalar_t__ len; struct csr1212_keyval* layout_tail; struct csr1212_keyval* layout_head; } ;


 scalar_t__ CSR1212_KV_ID_EXTENDED_ROM ;


 int WARN_ON (int) ;
 scalar_t__ quads_to_bytes (int) ;

__attribute__((used)) static struct csr1212_keyval *
csr1212_generate_positions(struct csr1212_csr_rom_cache *cache,
      struct csr1212_keyval *start_kv, int start_pos)
{
 struct csr1212_keyval *kv = start_kv;
 struct csr1212_keyval *okv = start_kv;
 int pos = start_pos;
 int kv_len = 0, okv_len = 0;

 cache->layout_head = kv;

 while (kv && pos < cache->size) {

  if (kv->key.id != CSR1212_KV_ID_EXTENDED_ROM)
   kv->offset = cache->offset + pos;

  switch (kv->key.type) {
  case 128:
   kv_len = kv->value.leaf.len;
   break;

  case 129:
   kv_len = kv->value.directory.len;
   break;

  default:

   WARN_ON(1);
   break;
  }

  pos += quads_to_bytes(kv_len + 1);

  if (pos <= cache->size) {
   okv = kv;
   okv_len = kv_len;
   kv = kv->next;
  }
 }

 cache->layout_tail = okv;
 cache->len = okv->offset - cache->offset + quads_to_bytes(okv_len + 1);

 return kv;
}
