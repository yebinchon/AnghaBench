
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int * dentries_tail; int * dentries_head; scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__ directory; } ;
struct csr1212_keyval {int valid; TYPE_1__ value; scalar_t__ offset; } ;


 int CSR1212_KV_TYPE_DIRECTORY ;
 struct csr1212_keyval* csr1212_new_keyval (int ,int ) ;

struct csr1212_keyval *csr1212_new_directory(u8 key)
{
 struct csr1212_keyval *kv;

 kv = csr1212_new_keyval(CSR1212_KV_TYPE_DIRECTORY, key);
 if (!kv)
  return ((void*)0);

 kv->value.directory.len = 0;
 kv->offset = 0;
 kv->value.directory.dentries_head = ((void*)0);
 kv->value.directory.dentries_tail = ((void*)0);
 kv->valid = 1;
 return kv;
}
