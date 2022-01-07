
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct csr1212_keyval_img {int data; void* crc; void* length; } ;
struct TYPE_10__ {int len; } ;
struct TYPE_9__ {int len; int data; } ;
struct TYPE_11__ {TYPE_4__ directory; TYPE_3__ leaf; } ;
struct TYPE_8__ {int type; int id; } ;
struct csr1212_keyval {struct csr1212_keyval* next; TYPE_6__* prev; TYPE_5__ value; TYPE_2__ key; scalar_t__ offset; } ;
struct csr1212_csr_rom_cache {scalar_t__ offset; scalar_t__ data; TYPE_1__* layout_tail; struct csr1212_keyval* layout_head; } ;
struct TYPE_12__ {int * next; } ;
struct TYPE_7__ {struct csr1212_keyval* next; } ;


 int CSR1212_KV_ID_EXTENDED_ROM ;




 int WARN_ON (int) ;
 scalar_t__ bytes_to_quads (scalar_t__) ;
 void* cpu_to_be16 (int ) ;
 void* csr1212_crc16 (int ,int ) ;
 int csr1212_generate_tree_subdir (struct csr1212_keyval*,int ) ;
 int memcpy (int ,int ,int ) ;
 int quads_to_bytes (int ) ;

__attribute__((used)) static void csr1212_fill_cache(struct csr1212_csr_rom_cache *cache)
{
 struct csr1212_keyval *kv, *nkv;
 struct csr1212_keyval_img *kvi;

 for (kv = cache->layout_head;
      kv != cache->layout_tail->next;
      kv = nkv) {
  kvi = (struct csr1212_keyval_img *)(cache->data +
    bytes_to_quads(kv->offset - cache->offset));
  switch (kv->key.type) {
  default:
  case 129:
  case 131:

   WARN_ON(1);
   break;

  case 128:


   if (kv->key.id != CSR1212_KV_ID_EXTENDED_ROM)
    memcpy(kvi->data, kv->value.leaf.data,
           quads_to_bytes(kv->value.leaf.len));

   kvi->length = cpu_to_be16(kv->value.leaf.len);
   kvi->crc = csr1212_crc16(kvi->data, kv->value.leaf.len);
   break;

  case 130:
   csr1212_generate_tree_subdir(kv, kvi->data);

   kvi->length = cpu_to_be16(kv->value.directory.len);
   kvi->crc = csr1212_crc16(kvi->data,
       kv->value.directory.len);
   break;
  }

  nkv = kv->next;
  if (kv->prev)
   kv->prev->next = ((void*)0);
  if (kv->next)
   kv->next->prev = ((void*)0);
  kv->prev = ((void*)0);
  kv->next = ((void*)0);
 }
}
