
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_dirty_log_type {int list; int name; } ;


 int EINVAL ;
 int __find_dirty_log_type (int ) ;
 int _lock ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dm_dirty_log_type_unregister(struct dm_dirty_log_type *type)
{
 spin_lock(&_lock);

 if (!__find_dirty_log_type(type->name)) {
  spin_unlock(&_lock);
  return -EINVAL;
 }

 list_del(&type->list);

 spin_unlock(&_lock);

 return 0;
}
