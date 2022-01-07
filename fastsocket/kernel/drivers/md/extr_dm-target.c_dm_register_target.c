
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_type {int list; int name; } ;


 int EEXIST ;
 scalar_t__ __find_target_type (int ) ;
 int _lock ;
 int _targets ;
 int down_write (int *) ;
 int list_add (int *,int *) ;
 int up_write (int *) ;

int dm_register_target(struct target_type *tt)
{
 int rv = 0;

 down_write(&_lock);
 if (__find_target_type(tt->name))
  rv = -EEXIST;
 else
  list_add(&tt->list, &_targets);

 up_write(&_lock);
 return rv;
}
