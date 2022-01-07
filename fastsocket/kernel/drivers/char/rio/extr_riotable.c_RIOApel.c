
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_info {struct Map* RIOConnectTable; struct Host* RIOHosts; } ;
struct Map {int Flags; int Name; int * Topology; int SysPort; scalar_t__ ID; scalar_t__ RtaUniqueNum; int HostUniqueNum; } ;
struct Host {int Flags; int HostLock; struct Map* Mapping; int Name; int * Topology; int UniqueNum; } ;


 int LINKS_PER_UNIT ;
 int MAX_NAME_LEN ;
 int MAX_RUP ;
 int NO_PORT ;
 int RC_RUNNING ;
 int RIO_DEBUG_TABLE ;
 int RIO_HOSTS ;
 int RTA16_SECOND_SLOT ;
 int RUN_STATE ;
 int SLOT_IN_USE ;
 int SLOT_TENTATIVE ;
 int TOTAL_MAP_ENTRIES ;
 int memcpy (int ,int ,int ) ;
 int memset (struct Map*,int ,int) ;
 int rio_dprintk (int ,char*,...) ;
 int rio_spin_lock_irqsave (int *,unsigned long) ;
 int rio_spin_unlock_irqrestore (int *,unsigned long) ;

int RIOApel(struct rio_info *p)
{
 int Host;
 int link;
 int Rup;
 int Next = 0;
 struct Map *MapP;
 struct Host *HostP;
 unsigned long flags;

 rio_dprintk(RIO_DEBUG_TABLE, "Generating a table to return to config.rio\n");

 memset(&p->RIOConnectTable[0], 0, sizeof(struct Map) * TOTAL_MAP_ENTRIES);

 for (Host = 0; Host < RIO_HOSTS; Host++) {
  rio_dprintk(RIO_DEBUG_TABLE, "Processing host %d\n", Host);
  HostP = &p->RIOHosts[Host];
  rio_spin_lock_irqsave(&HostP->HostLock, flags);

  MapP = &p->RIOConnectTable[Next++];
  MapP->HostUniqueNum = HostP->UniqueNum;
  if ((HostP->Flags & RUN_STATE) != RC_RUNNING) {
   rio_spin_unlock_irqrestore(&HostP->HostLock, flags);
   continue;
  }
  MapP->RtaUniqueNum = 0;
  MapP->ID = 0;
  MapP->Flags = SLOT_IN_USE;
  MapP->SysPort = NO_PORT;
  for (link = 0; link < LINKS_PER_UNIT; link++)
   MapP->Topology[link] = HostP->Topology[link];
  memcpy(MapP->Name, HostP->Name, MAX_NAME_LEN);
  for (Rup = 0; Rup < MAX_RUP; Rup++) {
   if (HostP->Mapping[Rup].Flags & (SLOT_IN_USE | SLOT_TENTATIVE)) {
    p->RIOConnectTable[Next] = HostP->Mapping[Rup];
    if (HostP->Mapping[Rup].Flags & SLOT_IN_USE)
     p->RIOConnectTable[Next].Flags |= SLOT_IN_USE;
    if (HostP->Mapping[Rup].Flags & SLOT_TENTATIVE)
     p->RIOConnectTable[Next].Flags |= SLOT_TENTATIVE;
    if (HostP->Mapping[Rup].Flags & RTA16_SECOND_SLOT)
     p->RIOConnectTable[Next].Flags |= RTA16_SECOND_SLOT;
    Next++;
   }
  }
  rio_spin_unlock_irqrestore(&HostP->HostLock, flags);
 }
 return 0;
}
