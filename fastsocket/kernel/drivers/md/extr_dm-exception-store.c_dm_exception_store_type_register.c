
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_store_type {int list; int name; } ;


 int EEXIST ;
 int __find_exception_store_type (int ) ;
 int _exception_store_types ;
 int _lock ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dm_exception_store_type_register(struct dm_exception_store_type *type)
{
 int r = 0;

 spin_lock(&_lock);
 if (!__find_exception_store_type(type->name))
  list_add(&type->list, &_exception_store_types);
 else
  r = -EEXIST;
 spin_unlock(&_lock);

 return r;
}
