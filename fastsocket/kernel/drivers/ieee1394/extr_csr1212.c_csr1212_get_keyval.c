
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csr1212_keyval {int valid; } ;
struct csr1212_csr {int dummy; } ;


 scalar_t__ CSR1212_SUCCESS ;
 scalar_t__ csr1212_read_keyval (struct csr1212_csr*,struct csr1212_keyval*) ;

struct csr1212_keyval *
csr1212_get_keyval(struct csr1212_csr *csr, struct csr1212_keyval *kv)
{
 if (!kv)
  return ((void*)0);
 if (!kv->valid)
  if (csr1212_read_keyval(csr, kv) != CSR1212_SUCCESS)
   return ((void*)0);
 return kv;
}
