
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int module; } ;
struct ps_internal {TYPE_1__ pst; } ;


 struct ps_internal* __find_path_selector_type (char const*) ;
 int _ps_lock ;
 int down_read (int *) ;
 int try_module_get (int ) ;
 int up_read (int *) ;

__attribute__((used)) static struct ps_internal *get_path_selector(const char *name)
{
 struct ps_internal *psi;

 down_read(&_ps_lock);
 psi = __find_path_selector_type(name);
 if (psi && !try_module_get(psi->pst.module))
  psi = ((void*)0);
 up_read(&_ps_lock);

 return psi;
}
