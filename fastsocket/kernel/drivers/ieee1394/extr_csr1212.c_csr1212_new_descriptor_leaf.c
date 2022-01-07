
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int * data; } ;
struct TYPE_4__ {TYPE_1__ leaf; } ;
struct csr1212_keyval {TYPE_2__ value; } ;


 int CSR1212_DESCRIPTOR_LEAF_DATA (struct csr1212_keyval*) ;
 scalar_t__ CSR1212_DESCRIPTOR_LEAF_OVERHEAD ;
 int CSR1212_DESCRIPTOR_LEAF_SET_SPECIFIER_ID (struct csr1212_keyval*,int ) ;
 int CSR1212_DESCRIPTOR_LEAF_SET_TYPE (struct csr1212_keyval*,int ) ;
 int CSR1212_KV_ID_DESCRIPTOR ;
 struct csr1212_keyval* csr1212_new_leaf (int ,int *,scalar_t__) ;
 int kmemcheck_annotate_variable (int ) ;
 int memcpy (int ,void const*,size_t) ;

__attribute__((used)) static struct csr1212_keyval *
csr1212_new_descriptor_leaf(u8 dtype, u32 specifier_id,
       const void *data, size_t data_len)
{
 struct csr1212_keyval *kv;

 kv = csr1212_new_leaf(CSR1212_KV_ID_DESCRIPTOR, ((void*)0),
         data_len + CSR1212_DESCRIPTOR_LEAF_OVERHEAD);
 if (!kv)
  return ((void*)0);

 kmemcheck_annotate_variable(kv->value.leaf.data[0]);
 CSR1212_DESCRIPTOR_LEAF_SET_TYPE(kv, dtype);
 CSR1212_DESCRIPTOR_LEAF_SET_SPECIFIER_ID(kv, specifier_id);

 if (data)
  memcpy(CSR1212_DESCRIPTOR_LEAF_DATA(kv), data, data_len);

 return kv;
}
