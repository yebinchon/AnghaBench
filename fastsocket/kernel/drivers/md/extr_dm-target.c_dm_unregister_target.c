
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_type {int list; int name; } ;


 int BUG () ;
 int DMCRIT (char*,int ) ;
 int __find_target_type (int ) ;
 int _lock ;
 int down_write (int *) ;
 int list_del (int *) ;
 int up_write (int *) ;

void dm_unregister_target(struct target_type *tt)
{
 down_write(&_lock);
 if (!__find_target_type(tt->name)) {
  DMCRIT("Unregistering unrecognised target: %s", tt->name);
  BUG();
 }

 list_del(&tt->list);

 up_write(&_lock);
}
