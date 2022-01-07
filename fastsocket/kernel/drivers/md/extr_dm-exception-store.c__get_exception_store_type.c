
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_store_type {int module; } ;


 struct dm_exception_store_type* __find_exception_store_type (char const*) ;
 int _lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct dm_exception_store_type *_get_exception_store_type(const char *name)
{
 struct dm_exception_store_type *type;

 spin_lock(&_lock);

 type = __find_exception_store_type(name);

 if (type && !try_module_get(type->module))
  type = ((void*)0);

 spin_unlock(&_lock);

 return type;
}
