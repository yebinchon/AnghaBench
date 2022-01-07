
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {int ReplyFifo; } ;
typedef TYPE_2__ MPT_ADAPTER ;


 int CHIPREG_READ32_dmasync (int *) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MPI_ADDRESS_REPLY_A_BIT ;
 int mpt_reply (TYPE_2__*,int) ;
 int mpt_turbo_reply (TYPE_2__*,int) ;

__attribute__((used)) static irqreturn_t
mpt_interrupt(int irq, void *bus_id)
{
 MPT_ADAPTER *ioc = bus_id;
 u32 pa = CHIPREG_READ32_dmasync(&ioc->chip->ReplyFifo);

 if (pa == 0xFFFFFFFF)
  return IRQ_NONE;




 do {
  if (pa & MPI_ADDRESS_REPLY_A_BIT)
   mpt_reply(ioc, pa);
  else
   mpt_turbo_reply(ioc, pa);
  pa = CHIPREG_READ32_dmasync(&ioc->chip->ReplyFifo);
 } while (pa != 0xFFFFFFFF);

 return IRQ_HANDLED;
}
