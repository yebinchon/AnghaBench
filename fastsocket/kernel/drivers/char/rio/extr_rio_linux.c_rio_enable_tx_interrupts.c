
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct Port {TYPE_2__ gs; } ;


 int GS_TX_INTEN ;
 int RIOTxEnable (char*) ;
 int func_enter () ;
 int func_exit () ;

__attribute__((used)) static void rio_enable_tx_interrupts(void *ptr)
{
 struct Port *PortP = ptr;


 func_enter();






 RIOTxEnable((char *) PortP);





 PortP->gs.port.flags &= ~GS_TX_INTEN;

 func_exit();
}
