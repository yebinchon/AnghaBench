
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct csr1212_keyval* data; } ;
struct TYPE_6__ {TYPE_2__ leaf; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ id; } ;
struct csr1212_keyval {TYPE_3__ value; TYPE_1__ key; } ;


 int CSR1212_FREE (struct csr1212_keyval*) ;
 scalar_t__ CSR1212_KV_ID_EXTENDED_ROM ;
 scalar_t__ CSR1212_KV_TYPE_LEAF ;

__attribute__((used)) static void free_keyval(struct csr1212_keyval *kv)
{
 if ((kv->key.type == CSR1212_KV_TYPE_LEAF) &&
     (kv->key.id != CSR1212_KV_ID_EXTENDED_ROM))
  CSR1212_FREE(kv->value.leaf.data);

 CSR1212_FREE(kv);
}
