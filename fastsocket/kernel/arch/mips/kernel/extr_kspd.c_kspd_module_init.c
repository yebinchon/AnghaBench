
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stop; int start; } ;


 int INIT_LIST_HEAD (int *) ;
 int kspd_notifylist ;
 TYPE_1__ notify ;
 int startwork ;
 int stopwork ;
 int tclimit ;
 int vpe_notify (int ,TYPE_1__*) ;

__attribute__((used)) static int kspd_module_init(void)
{
 INIT_LIST_HEAD(&kspd_notifylist);

 notify.start = startwork;
 notify.stop = stopwork;
 vpe_notify(tclimit, &notify);

 return 0;
}
