
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
 struct CmdBlk* RIOGetCmdBlk () ;
 scalar_t__ RIOQueueCmdBlk (struct Host*,scalar_t__,struct CmdBlk*) ;
 int RIO_DEBUG_CMD ;
 scalar_t__ RIO_FAIL ;
 int ZOMBIE ;
 int ZOMBIE_MAGIC ;
 int rio_dprintk (int ,char*) ;

int RIOZombieRta(struct Host *HostP, struct Map *MapP)
{
 struct CmdBlk *CmdBlkP;

 rio_dprintk(RIO_DEBUG_CMD, "ZOMBIE RTA\n");

 CmdBlkP = RIOGetCmdBlk();

 if (!CmdBlkP) {
  rio_dprintk(RIO_DEBUG_CMD, "ZOMBIE RTA: GetCmdBlk failed\n");
  return -ENXIO;
 }

 CmdBlkP->Packet.dest_unit = MapP->ID;
 CmdBlkP->Packet.dest_port = BOOT_RUP;
 CmdBlkP->Packet.src_unit = 0;
 CmdBlkP->Packet.src_port = BOOT_RUP;
 CmdBlkP->Packet.len = 0x84;
 CmdBlkP->Packet.data[0] = ZOMBIE;
 CmdBlkP->Packet.data[1] = 0;
 CmdBlkP->Packet.data[2] = ZOMBIE_MAGIC & 0xFF;
 CmdBlkP->Packet.data[3] = (ZOMBIE_MAGIC >> 8) & 0xFF;

 if (RIOQueueCmdBlk(HostP, MapP->ID - 1, CmdBlkP) == RIO_FAIL) {
  rio_dprintk(RIO_DEBUG_CMD, "ZOMBIE RTA: Failed to queue zombie command\n");
  return -EIO;
 }
 return 0;
}
