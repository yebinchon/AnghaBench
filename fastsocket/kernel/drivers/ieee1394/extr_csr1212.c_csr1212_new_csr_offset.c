
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int csr_offset; } ;
struct csr1212_keyval {int valid; scalar_t__ offset; TYPE_1__ value; } ;


 int CSR1212_KV_TYPE_CSR_OFFSET ;
 struct csr1212_keyval* csr1212_new_keyval (int ,int ) ;

__attribute__((used)) static struct csr1212_keyval *
csr1212_new_csr_offset(u8 key, u32 csr_offset)
{
 struct csr1212_keyval *kv;

 kv = csr1212_new_keyval(CSR1212_KV_TYPE_CSR_OFFSET, key);
 if (!kv)
  return ((void*)0);

 kv->value.csr_offset = csr_offset;

 kv->offset = 0;
 kv->valid = 1;
 return kv;
}
