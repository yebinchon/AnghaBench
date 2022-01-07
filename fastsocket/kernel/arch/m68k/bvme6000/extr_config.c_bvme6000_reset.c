
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcddr; } ;
typedef TYPE_1__* PitRegsPtr ;


 int BVME_PIT_BASE ;
 int printk (char*) ;

void bvme6000_reset(void)
{
 volatile PitRegsPtr pit = (PitRegsPtr)BVME_PIT_BASE;

 printk ("\r\n\nCalled bvme6000_reset\r\n"
   "\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r");




 pit->pcddr |= 0x10;

 while(1)
  ;
}
