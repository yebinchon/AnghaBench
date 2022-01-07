
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Host {int Type; int Mode; int Ivec; int Control; } ;


 int BOOT_FROM_RAM ;
 int EXTERNAL_BUS_ON ;
 int PCITpBootFromRam ;
 int PCITpBusEnable ;
 int* RIOAtVec2Ctrl ;

 int RIO_DEBUG_BOOT ;

 int rio_dprintk (int ,char*,...) ;
 int writeb (int,int *) ;

void rio_start_card_running(struct Host *HostP)
{
 switch (HostP->Type) {
 case 129:
  rio_dprintk(RIO_DEBUG_BOOT, "Start ISA card running\n");
  writeb(BOOT_FROM_RAM | EXTERNAL_BUS_ON | HostP->Mode | RIOAtVec2Ctrl[HostP->Ivec & 0xF], &HostP->Control);
  break;
 case 128:





  rio_dprintk(RIO_DEBUG_BOOT, "Start PCI card running\n");
  writeb(PCITpBootFromRam | PCITpBusEnable | HostP->Mode, &HostP->Control);
  break;
 default:
  rio_dprintk(RIO_DEBUG_BOOT, "Unknown host type %d\n", HostP->Type);
  break;
 }
 return;
}
