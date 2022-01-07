
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int watchdog; } ;


 TYPE_1__* m147_pcc ;
 int printk (char*) ;

void mvme147_reset(void)
{
 printk ("\r\n\nCalled mvme147_reset\r\n");
 m147_pcc->watchdog = 0x0a;
 m147_pcc->watchdog = 0xa5;
 while (1)
  ;
}
