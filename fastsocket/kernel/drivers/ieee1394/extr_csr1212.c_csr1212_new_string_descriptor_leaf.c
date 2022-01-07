
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__* data; } ;
struct TYPE_4__ {TYPE_1__ leaf; } ;
struct csr1212_keyval {TYPE_2__ value; } ;


 scalar_t__* CSR1212_TEXTUAL_DESCRIPTOR_LEAF_DATA (struct csr1212_keyval*) ;
 scalar_t__ CSR1212_TEXTUAL_DESCRIPTOR_LEAF_OVERHEAD ;
 size_t bytes_to_quads (size_t) ;
 scalar_t__ csr1212_check_minimal_ascii (char const*) ;
 struct csr1212_keyval* csr1212_new_descriptor_leaf (int ,int ,int *,scalar_t__) ;
 int memcpy (scalar_t__*,char const*,size_t) ;
 scalar_t__ quads_to_bytes (size_t) ;
 size_t strlen (char const*) ;

struct csr1212_keyval *csr1212_new_string_descriptor_leaf(const char *s)
{
 struct csr1212_keyval *kv;
 u32 *text;
 size_t str_len, quads;

 if (!s || !*s || csr1212_check_minimal_ascii(s))
  return ((void*)0);

 str_len = strlen(s);
 quads = bytes_to_quads(str_len);
 kv = csr1212_new_descriptor_leaf(0, 0, ((void*)0), quads_to_bytes(quads) +
          CSR1212_TEXTUAL_DESCRIPTOR_LEAF_OVERHEAD);
 if (!kv)
  return ((void*)0);

 kv->value.leaf.data[1] = 0;
 text = CSR1212_TEXTUAL_DESCRIPTOR_LEAF_DATA(kv);
 text[quads - 1] = 0;
 memcpy(text, s, str_len);

 return kv;
}
