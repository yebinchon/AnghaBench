
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int len; } ;
struct TYPE_5__ {struct csr1212_dentry* dentries_head; } ;
struct TYPE_8__ {scalar_t__ immediate; TYPE_3__ leaf; TYPE_1__ directory; } ;
struct TYPE_6__ {scalar_t__ id; int type; } ;
struct csr1212_keyval {struct csr1212_keyval* next; struct csr1212_keyval* prev; TYPE_4__ value; TYPE_2__ key; struct csr1212_keyval* associate; } ;
struct csr1212_dentry {struct csr1212_keyval* kv; struct csr1212_dentry* next; } ;


 scalar_t__ CSR1212_KV_ID_EXTENDED_KEY ;
 scalar_t__ CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID ;
 scalar_t__ CSR1212_KV_ID_EXTENDED_ROM ;





__attribute__((used)) static int csr1212_generate_layout_subdir(struct csr1212_keyval *dir,
       struct csr1212_keyval **layout_tail)
{
 struct csr1212_dentry *dentry;
 struct csr1212_keyval *dkv;
 struct csr1212_keyval *last_extkey_spec = ((void*)0);
 struct csr1212_keyval *last_extkey = ((void*)0);
 int num_entries = 0;

 for (dentry = dir->value.directory.dentries_head; dentry;
      dentry = dentry->next) {
  for (dkv = dentry->kv; dkv; dkv = dkv->associate) {

   if (dkv->key.id ==
       CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID) {
    if (last_extkey_spec == ((void*)0))
     last_extkey_spec = dkv;
    else if (dkv->value.immediate !=
      last_extkey_spec->value.immediate)
     last_extkey_spec = dkv;
    else
     continue;

   } else if (dkv->key.id == CSR1212_KV_ID_EXTENDED_KEY) {
    if (last_extkey == ((void*)0))
     last_extkey = dkv;
    else if (dkv->value.immediate !=
      last_extkey->value.immediate)
     last_extkey = dkv;
    else
     continue;
   }

   num_entries += 1;

   switch (dkv->key.type) {
   default:
   case 129:
   case 131:
    break;
   case 128:
   case 130:

    if (dkv->prev && (dkv->prev->next == dkv))
     dkv->prev->next = dkv->next;
    if (dkv->next && (dkv->next->prev == dkv))
     dkv->next->prev = dkv->prev;




    if (dkv->key.id == CSR1212_KV_ID_EXTENDED_ROM) {
     dkv->value.leaf.len = -1;



     break;
    }


    dkv->next = ((void*)0);
    dkv->prev = *layout_tail;
    (*layout_tail)->next = dkv;
    *layout_tail = dkv;
    break;
   }
  }
 }
 return num_entries;
}
