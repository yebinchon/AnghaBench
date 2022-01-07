
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int immediate; } ;
struct csr1212_keyval {int valid; TYPE_1__ value; } ;


 int CSR1212_KV_TYPE_IMMEDIATE ;
 struct csr1212_keyval* csr1212_new_keyval (int ,int ) ;

struct csr1212_keyval *csr1212_new_immediate(u8 key, u32 value)
{
 struct csr1212_keyval *kv;

 kv = csr1212_new_keyval(CSR1212_KV_TYPE_IMMEDIATE, key);
 if (!kv)
  return ((void*)0);

 kv->value.immediate = value;
 kv->valid = 1;
 return kv;
}
