
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct csr1212_keyval {struct csr1212_keyval* next; struct csr1212_keyval* prev; scalar_t__ offset; int valid; } ;


 int CSR1212_KV_KEY_ID (scalar_t__) ;
 int CSR1212_KV_KEY_TYPE (scalar_t__) ;

 int CSR1212_KV_TYPE_DIRECTORY ;

 int CSR1212_KV_VAL (scalar_t__) ;
 int CSR1212_SUCCESS ;
 int EIO ;
 int ENOMEM ;
 int __csr1212_attach_keyval_to_directory (struct csr1212_keyval*,struct csr1212_keyval*,int) ;
 struct csr1212_keyval* csr1212_find_keyval_offset (struct csr1212_keyval*,scalar_t__) ;
 struct csr1212_keyval* csr1212_new_csr_offset (int ,int ) ;
 struct csr1212_keyval* csr1212_new_directory (int ) ;
 struct csr1212_keyval* csr1212_new_immediate (int ,int ) ;
 struct csr1212_keyval* csr1212_new_leaf (int ,int *,int ) ;
 int free_keyval (struct csr1212_keyval*) ;
 scalar_t__ quads_to_bytes (int ) ;

__attribute__((used)) static int
csr1212_parse_dir_entry(struct csr1212_keyval *dir, u32 ki, u32 kv_pos)
{
 int ret = CSR1212_SUCCESS;
 struct csr1212_keyval *k = ((void*)0);
 u32 offset;
 bool keep_keyval = 1;

 switch (CSR1212_KV_KEY_TYPE(ki)) {
 case 128:
  k = csr1212_new_immediate(CSR1212_KV_KEY_ID(ki),
       CSR1212_KV_VAL(ki));
  if (!k) {
   ret = -ENOMEM;
   goto out;
  }

  keep_keyval = 0;
  break;

 case 129:
  k = csr1212_new_csr_offset(CSR1212_KV_KEY_ID(ki),
        CSR1212_KV_VAL(ki));
  if (!k) {
   ret = -ENOMEM;
   goto out;
  }

  keep_keyval = 0;
  break;

 default:

  offset = quads_to_bytes(CSR1212_KV_VAL(ki)) + kv_pos;
  if (offset == kv_pos) {



   ret = -EIO;
   goto out;
  }

  k = csr1212_find_keyval_offset(dir, offset);

  if (k)
   break;

  if (CSR1212_KV_KEY_TYPE(ki) == CSR1212_KV_TYPE_DIRECTORY)
   k = csr1212_new_directory(CSR1212_KV_KEY_ID(ki));
  else
   k = csr1212_new_leaf(CSR1212_KV_KEY_ID(ki), ((void*)0), 0);

  if (!k) {
   ret = -ENOMEM;
   goto out;
  }

  keep_keyval = 0;

  k->valid = 0;
  k->offset = offset;

  k->prev = dir;
  k->next = dir->next;
  dir->next->prev = k;
  dir->next = k;
 }
 ret = __csr1212_attach_keyval_to_directory(dir, k, keep_keyval);
out:
 if (ret != CSR1212_SUCCESS && k != ((void*)0))
  free_keyval(k);
 return ret;
}
