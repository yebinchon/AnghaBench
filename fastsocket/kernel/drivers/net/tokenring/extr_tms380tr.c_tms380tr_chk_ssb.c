
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short STS; unsigned short* Parm; } ;
struct net_local {TYPE_1__ ssb; } ;
typedef TYPE_1__ SSB ;


 unsigned short STS_IRQ_COMMAND_STATUS ;
 unsigned short STS_IRQ_RECEIVE_STATUS ;
 unsigned short STS_IRQ_RING_STATUS ;
 unsigned short STS_IRQ_TRANSMIT_STATUS ;

__attribute__((used)) static unsigned char tms380tr_chk_ssb(struct net_local *tp, unsigned short IrqType)
{
 SSB *ssb = &tp->ssb;
 if(IrqType != STS_IRQ_TRANSMIT_STATUS
  && IrqType != STS_IRQ_RECEIVE_STATUS
  && IrqType != STS_IRQ_COMMAND_STATUS
  && IrqType != STS_IRQ_RING_STATUS)
 {
  return (1);
 }







 if(ssb->STS == (unsigned short) -1)
  return (0);
 if(IrqType == STS_IRQ_COMMAND_STATUS)
  return (1);
 if(ssb->Parm[0] == (unsigned short) -1)
  return (0);
 if(IrqType == STS_IRQ_RING_STATUS)
  return (1);


 if(ssb->Parm[1] == (unsigned short) -1)
  return (0);
 if(ssb->Parm[2] == (unsigned short) -1)
  return (0);

 return (1);
}
