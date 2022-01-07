
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_internal {int list; } ;
struct path_selector_type {int name; } ;


 int EINVAL ;
 struct ps_internal* __find_path_selector_type (int ) ;
 int _ps_lock ;
 int down_write (int *) ;
 int kfree (struct ps_internal*) ;
 int list_del (int *) ;
 int up_write (int *) ;

int dm_unregister_path_selector(struct path_selector_type *pst)
{
 struct ps_internal *psi;

 down_write(&_ps_lock);

 psi = __find_path_selector_type(pst->name);
 if (!psi) {
  up_write(&_ps_lock);
  return -EINVAL;
 }

 list_del(&psi->list);

 up_write(&_ps_lock);

 kfree(psi);

 return 0;
}
