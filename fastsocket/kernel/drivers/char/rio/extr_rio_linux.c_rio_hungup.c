
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct Port {TYPE_2__ gs; } ;


 int func_enter () ;
 int func_exit () ;

__attribute__((used)) static void rio_hungup(void *ptr)
{
 struct Port *PortP;

 func_enter();

 PortP = (struct Port *) ptr;
 PortP->gs.port.tty = ((void*)0);

 func_exit();
}
