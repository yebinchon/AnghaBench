
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; int * cls; } ;
struct mpic {struct mpic* next; TYPE_1__ sysdev; } ;


 int mpic_sysclass ;
 struct mpic* mpics ;
 int sysdev_class_register (int *) ;
 int sysdev_register (TYPE_1__*) ;

__attribute__((used)) static int mpic_init_sys(void)
{
 struct mpic *mpic = mpics;
 int error, id = 0;

 error = sysdev_class_register(&mpic_sysclass);

 while (mpic && !error) {
  mpic->sysdev.cls = &mpic_sysclass;
  mpic->sysdev.id = id++;
  error = sysdev_register(&mpic->sysdev);
  mpic = mpic->next;
 }
 return error;
}
