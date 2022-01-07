
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_class {int dummy; } ;
typedef int ssize_t ;


 int get_best_energy_list (char*,int) ;

__attribute__((used)) static ssize_t cpu_activate_hint_list_show(struct sysdev_class *class,
      char *page)
{
 return get_best_energy_list(page, 1);
}
