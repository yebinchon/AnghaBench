
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csr1212_keyval {int dummy; } ;


 int __csr1212_attach_keyval_to_directory (struct csr1212_keyval*,struct csr1212_keyval*,int) ;

int csr1212_attach_keyval_to_directory(struct csr1212_keyval *dir,
           struct csr1212_keyval *kv)
{
 return __csr1212_attach_keyval_to_directory(dir, kv, 1);
}
