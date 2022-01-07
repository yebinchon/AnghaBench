
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_4__ {scalar_t__ i2eUsingIrq; } ;


 int ITRC_INTR ;
 int ITRC_NO_PORT ;
 int ITRC_RETURN ;
 TYPE_1__** i2BoardPtrTable ;
 int i2nBoards ;
 int ip2_irq_work (TYPE_1__*) ;
 int ip2trace (int ,int ,int,int,...) ;
 int irq_counter ;

__attribute__((used)) static void
ip2_polled_interrupt(void)
{
 int i;
 i2eBordStrPtr pB;

 ip2trace(ITRC_NO_PORT, ITRC_INTR, 99, 1, 0);


 for( i = 0; i < i2nBoards; ++i ) {
  pB = i2BoardPtrTable[i];




  if (pB && pB->i2eUsingIrq == 0)
   ip2_irq_work(pB);
 }

 ++irq_counter;

 ip2trace (ITRC_NO_PORT, ITRC_INTR, ITRC_RETURN, 0 );
}
