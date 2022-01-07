
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lsr; } ;


 int LSR_THRE ;
 int in_8 (int *) ;
 TYPE_1__* udbg_comport ;

__attribute__((used)) static void udbg_550_flush(void)
{
 if (udbg_comport) {
  while ((in_8(&udbg_comport->lsr) & LSR_THRE) == 0)
                      ;
 }
}
