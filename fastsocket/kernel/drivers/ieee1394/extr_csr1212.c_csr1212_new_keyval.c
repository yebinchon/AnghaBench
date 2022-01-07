
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int type; int id; } ;
struct csr1212_keyval {scalar_t__ valid; scalar_t__ offset; int * prev; int * next; int * associate; TYPE_1__ key; int refcnt; } ;


 struct csr1212_keyval* CSR1212_MALLOC (int) ;
 int atomic_set (int *,int) ;
 int* csr1212_key_id_type_map ;

__attribute__((used)) static struct csr1212_keyval *csr1212_new_keyval(u8 type, u8 key)
{
 struct csr1212_keyval *kv;

 if (key < 0x30 && ((csr1212_key_id_type_map[key] & (1 << type)) == 0))
  return ((void*)0);

 kv = CSR1212_MALLOC(sizeof(*kv));
 if (!kv)
  return ((void*)0);

 atomic_set(&kv->refcnt, 1);
 kv->key.type = type;
 kv->key.id = key;
 kv->associate = ((void*)0);
 kv->next = ((void*)0);
 kv->prev = ((void*)0);
 kv->offset = 0;
 kv->valid = 0;
 return kv;
}
