
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct csr1212_dentry* dentries_head; } ;
struct TYPE_4__ {TYPE_1__ directory; } ;
struct csr1212_keyval {TYPE_2__ value; } ;
struct csr1212_dentry {struct csr1212_keyval* kv; struct csr1212_dentry* next; } ;



__attribute__((used)) static struct csr1212_dentry *
csr1212_find_keyval(struct csr1212_keyval *dir, struct csr1212_keyval *kv)
{
 struct csr1212_dentry *pos;

 for (pos = dir->value.directory.dentries_head;
      pos != ((void*)0); pos = pos->next)
  if (pos->kv == kv)
   return pos;
 return ((void*)0);
}
