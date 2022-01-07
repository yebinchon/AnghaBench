
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Map {scalar_t__ ID; } ;
struct Host {int dummy; } ;
struct TYPE_2__ {int len; int* data; void* src_port; scalar_t__ src_unit; void* dest_port; scalar_t__ dest_unit; } ;
struct CmdBlk {TYPE_1__ Packet; } ;


 void* BOOT_RUP ;
 int EIO ;
 int ENXIO ;
 int IFOAD ;
 int IFOAD_MAGIC ;
 struct CmdBlk* RIOGetCmdBlk () ;
 scalar_t__ RIOQueueCmdBlk (struct Host*,scalar_t__,struct CmdBlk*) ;
 int RIO_DEBUG_CMD ;
 scalar_t__ RIO_FAIL ;
 int rio_dprintk (int ,char*) ;

int RIOFoadRta(struct Host *HostP, struct Map *MapP)
{
 struct CmdBlk *CmdBlkP;

 rio_dprintk(RIO_DEBUG_CMD, "FOAD RTA\n");

 CmdBlkP = RIOGetCmdBlk();

 if (!CmdBlkP) {
  rio_dprintk(RIO_DEBUG_CMD, "FOAD RTA: GetCmdBlk failed\n");
  return -ENXIO;
 }

 CmdBlkP->Packet.dest_unit = MapP->ID;
 CmdBlkP->Packet.dest_port = BOOT_RUP;
 CmdBlkP->Packet.src_unit = 0;
 CmdBlkP->Packet.src_port = BOOT_RUP;
 CmdBlkP->Packet.len = 0x84;
 CmdBlkP->Packet.data[0] = IFOAD;
 CmdBlkP->Packet.data[1] = 0;
 CmdBlkP->Packet.data[2] = IFOAD_MAGIC & 0xFF;
 CmdBlkP->Packet.data[3] = (IFOAD_MAGIC >> 8) & 0xFF;

 if (RIOQueueCmdBlk(HostP, MapP->ID - 1, CmdBlkP) == RIO_FAIL) {
  rio_dprintk(RIO_DEBUG_CMD, "FOAD RTA: Failed to queue foad command\n");
  return -EIO;
 }
 return 0;
}
