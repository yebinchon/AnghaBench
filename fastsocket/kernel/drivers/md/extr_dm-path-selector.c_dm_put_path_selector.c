
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int module; } ;
struct ps_internal {TYPE_1__ pst; } ;
struct path_selector_type {int name; } ;


 struct ps_internal* __find_path_selector_type (int ) ;
 int _ps_lock ;
 int down_read (int *) ;
 int module_put (int ) ;
 int up_read (int *) ;

void dm_put_path_selector(struct path_selector_type *pst)
{
 struct ps_internal *psi;

 if (!pst)
  return;

 down_read(&_ps_lock);
 psi = __find_path_selector_type(pst->name);
 if (!psi)
  goto out;

 module_put(psi->pst.module);
out:
 up_read(&_ps_lock);
}
