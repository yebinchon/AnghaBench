
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rbr; int lsr; } ;


 int LSR_DR ;
 int in_8 (int *) ;
 TYPE_1__* udbg_comport ;

__attribute__((used)) static int udbg_550_getc_poll(void)
{
 if (udbg_comport) {
  if ((in_8(&udbg_comport->lsr) & LSR_DR) != 0)
   return in_8(&udbg_comport->rbr);
  else
   return -1;
 }
 return -1;
}
