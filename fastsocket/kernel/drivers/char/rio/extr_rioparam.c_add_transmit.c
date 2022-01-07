
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Port {scalar_t__ TxAdd; scalar_t__ TxEnd; TYPE_1__* PhbP; int Caddr; int * TxStart; } ;
struct TYPE_2__ {int tx_add; } ;


 int PKT_IN_USE ;
 int RIO_DEBUG_PARAM ;
 int RIO_OFF (int ,int *) ;
 int readw (int *) ;
 int rio_dprintk (int ,char*) ;
 int writew (int,int *) ;

void add_transmit(struct Port *PortP)
{
 if (readw(PortP->TxAdd) & PKT_IN_USE) {
  rio_dprintk(RIO_DEBUG_PARAM, "add_transmit: Packet has been stolen!");
 }
 writew(readw(PortP->TxAdd) | PKT_IN_USE, PortP->TxAdd);
 PortP->TxAdd = (PortP->TxAdd == PortP->TxEnd) ? PortP->TxStart : PortP->TxAdd + 1;
 writew(RIO_OFF(PortP->Caddr, PortP->TxAdd), &PortP->PhbP->tx_add);
}
