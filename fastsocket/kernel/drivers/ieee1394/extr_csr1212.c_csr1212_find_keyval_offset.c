
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct csr1212_keyval {scalar_t__ offset; struct csr1212_keyval* next; } ;



__attribute__((used)) static struct csr1212_keyval *
csr1212_find_keyval_offset(struct csr1212_keyval *kv_list, u32 offset)
{
 struct csr1212_keyval *kv;

 for (kv = kv_list->next; kv && (kv != kv_list); kv = kv->next)
  if (kv->offset == offset)
   return kv;
 return ((void*)0);
}
