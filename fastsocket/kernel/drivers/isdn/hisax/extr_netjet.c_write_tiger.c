
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_8__ {int irqstat0; int last_is0; } ;
struct TYPE_9__ {TYPE_3__ njet; } ;
struct IsdnCardState {TYPE_4__ hw; TYPE_5__* bcs; } ;
struct TYPE_6__ {int* send; } ;
struct TYPE_7__ {TYPE_1__ tiger; } ;
struct TYPE_10__ {scalar_t__ mode; TYPE_2__ hw; int err_tx; } ;


 scalar_t__ L1_MODE_HDLC ;
 scalar_t__ L1_MODE_HDLC_56K ;
 int NETJET_DMA_TXSIZE ;
 int NETJET_IRQM0_WRITE ;
 int NETJET_IRQM0_WRITE_1 ;
 int debugl1 (struct IsdnCardState*,char*,int,int) ;
 int write_raw (TYPE_5__*,int*,int) ;

void write_tiger(struct IsdnCardState *cs) {
 u_int *p, cnt = NETJET_DMA_TXSIZE/2;

 if ((cs->hw.njet.irqstat0 & cs->hw.njet.last_is0) & NETJET_IRQM0_WRITE) {
  debugl1(cs,"tiger warn write double dma %x/%x",
   cs->hw.njet.irqstat0, cs->hw.njet.last_is0);






  return;
 } else {
  cs->hw.njet.last_is0 &= ~NETJET_IRQM0_WRITE;
  cs->hw.njet.last_is0 |= (cs->hw.njet.irqstat0 & NETJET_IRQM0_WRITE);
 }
 if (cs->hw.njet.irqstat0 & NETJET_IRQM0_WRITE_1)
  p = cs->bcs[0].hw.tiger.send + NETJET_DMA_TXSIZE - 1;
 else
  p = cs->bcs[0].hw.tiger.send + cnt - 1;
 if ((cs->bcs[0].mode == L1_MODE_HDLC) || (cs->bcs[0].mode == L1_MODE_HDLC_56K))
  write_raw(cs->bcs, p, cnt);
 if ((cs->bcs[1].mode == L1_MODE_HDLC) || (cs->bcs[1].mode == L1_MODE_HDLC_56K))
  write_raw(cs->bcs + 1, p, cnt);
 cs->hw.njet.irqstat0 &= ~NETJET_IRQM0_WRITE;
}
