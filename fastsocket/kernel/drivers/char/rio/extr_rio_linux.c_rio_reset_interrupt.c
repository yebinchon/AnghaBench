
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Host {int Type; int ResetInt; } ;





 int func_enter () ;
 int func_exit () ;
 int writeb (int,int *) ;

__attribute__((used)) static void rio_reset_interrupt(struct Host *HostP)
{
 func_enter();

 switch (HostP->Type) {
 case 130:
 case 129:
 case 128:
  writeb(0xFF, &HostP->ResetInt);
 }

 func_exit();
}
