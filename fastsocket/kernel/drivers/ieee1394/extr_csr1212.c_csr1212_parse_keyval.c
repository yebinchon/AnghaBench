
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct csr1212_keyval_img {int* data; int crc; int length; } ;
struct TYPE_7__ {int len; int data; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_8__ {TYPE_3__ leaf; TYPE_1__ directory; } ;
struct TYPE_6__ {int type; int id; } ;
struct csr1212_keyval {size_t offset; int valid; TYPE_4__ value; TYPE_2__ key; } ;
struct csr1212_csr_rom_cache {size_t offset; int * data; } ;


 int CSR1212_KV_ID_EXTENDED_ROM ;


 int CSR1212_MALLOC (size_t) ;
 int CSR1212_SUCCESS ;
 int ENOMEM ;
 int be16_to_cpu (int ) ;
 size_t bytes_to_quads (size_t) ;
 int csr1212_check_crc (int*,int,int ,int *) ;
 int csr1212_parse_dir_entry (struct csr1212_keyval*,int,size_t) ;
 int memcpy (int ,int*,size_t) ;
 size_t quads_to_bytes (int) ;

int csr1212_parse_keyval(struct csr1212_keyval *kv,
    struct csr1212_csr_rom_cache *cache)
{
 struct csr1212_keyval_img *kvi;
 int i;
 int ret = CSR1212_SUCCESS;
 int kvi_len;

 kvi = (struct csr1212_keyval_img*)
  &cache->data[bytes_to_quads(kv->offset - cache->offset)];
 kvi_len = be16_to_cpu(kvi->length);


 csr1212_check_crc(kvi->data, kvi_len, kvi->crc, &cache->data[3]);

 switch (kv->key.type) {
 case 129:
  for (i = 0; i < kvi_len; i++) {
   u32 ki = kvi->data[i];




   if (ki == 0x0)
    continue;
   ret = csr1212_parse_dir_entry(kv, ki,
     kv->offset + quads_to_bytes(i + 1));
  }
  kv->value.directory.len = kvi_len;
  break;

 case 128:
  if (kv->key.id != CSR1212_KV_ID_EXTENDED_ROM) {
   size_t size = quads_to_bytes(kvi_len);

   kv->value.leaf.data = CSR1212_MALLOC(size);
   if (!kv->value.leaf.data) {
    ret = -ENOMEM;
    goto out;
   }

   kv->value.leaf.len = kvi_len;
   memcpy(kv->value.leaf.data, kvi->data, size);
  }
  break;
 }

 kv->valid = 1;
out:
 return ret;
}
