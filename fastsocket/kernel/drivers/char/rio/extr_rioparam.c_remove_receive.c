
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Port {scalar_t__ RxRemove; scalar_t__ RxEnd; TYPE_1__* PhbP; int Caddr; int * RxStart; } ;
struct TYPE_2__ {int rx_remove; } ;


 int PKT_IN_USE ;
 int RIO_OFF (int ,int *) ;
 int readw (int *) ;
 int writew (int,int *) ;

void remove_receive(struct Port *PortP)
{
 writew(readw(PortP->RxRemove) & ~PKT_IN_USE, PortP->RxRemove);
 PortP->RxRemove = (PortP->RxRemove == PortP->RxEnd) ? PortP->RxStart : PortP->RxRemove + 1;
 writew(RIO_OFF(PortP->Caddr, PortP->RxRemove), &PortP->PhbP->rx_remove);
}
