
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Port {scalar_t__ TxBufferOut; scalar_t__ TxBufferIn; scalar_t__ RxDataStart; scalar_t__ MagicFlags; scalar_t__ WflushFlag; scalar_t__ Mapped; scalar_t__ CookMode; scalar_t__ ModemState; scalar_t__ FlushCmdBodge; scalar_t__ firstOpen; scalar_t__ PortState; scalar_t__ Config; } ;


 int RIO_DEBUG_TTY ;
 int rio_dprintk (int ,char*) ;

__attribute__((used)) static void RIOClearUp(struct Port *PortP)
{
 rio_dprintk(RIO_DEBUG_TTY, "RIOHalted set\n");
 PortP->Config = 0;
 PortP->PortState = 0;
 PortP->firstOpen = 0;
 PortP->FlushCmdBodge = 0;
 PortP->ModemState = PortP->CookMode = 0;
 PortP->Mapped = 0;
 PortP->WflushFlag = 0;
 PortP->MagicFlags = 0;
 PortP->RxDataStart = 0;
 PortP->TxBufferIn = 0;
 PortP->TxBufferOut = 0;
}
