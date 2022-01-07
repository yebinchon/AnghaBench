
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int len; } ;
struct TYPE_6__ {int len; } ;
struct TYPE_8__ {TYPE_3__ directory; TYPE_2__ leaf; } ;
struct TYPE_5__ {int type; } ;
struct csr1212_keyval {struct csr1212_keyval* next; TYPE_4__ value; TYPE_1__ key; } ;




 int csr1212_generate_layout_subdir (struct csr1212_keyval*,struct csr1212_keyval**) ;
 size_t quads_to_bytes (size_t) ;

__attribute__((used)) static size_t csr1212_generate_layout_order(struct csr1212_keyval *kv)
{
 struct csr1212_keyval *ltail = kv;
 size_t agg_size = 0;

 while (kv) {
  switch (kv->key.type) {
  case 128:

   agg_size += kv->value.leaf.len + 1;
   break;

  case 129:
   kv->value.directory.len =
    csr1212_generate_layout_subdir(kv, &ltail);

   agg_size += kv->value.directory.len + 1;
   break;
  }
  kv = kv->next;
 }
 return quads_to_bytes(agg_size);
}
