
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int Error; } ;
struct rio_info {int RIONumHosts; TYPE_2__ RIOError; TYPE_1__* RIOHosts; } ;
struct Map {scalar_t__ HostUniqueNum; scalar_t__ RtaUniqueNum; int ID; char* Name; scalar_t__ SysPort; } ;
struct TYPE_3__ {scalar_t__ UniqueNum; int Flags; char* Name; struct Map* Mapping; } ;


 int BAD_CHARACTER_IN_NAME ;
 int EINVAL ;
 int ENXIO ;
 int HOST_NOT_RUNNING ;
 int ID_NUMBER_OUT_OF_RANGE ;
 int MAX_NAME_LEN ;
 int MAX_RUP ;
 int RC_RUNNING ;
 int RIO_DEBUG_TABLE ;
 int RTA_NUMBER_WRONG ;
 int RUN_STATE ;
 int UNKNOWN_HOST_NUMBER ;
 int memcpy (char*,char*,int) ;
 int rio_dprintk (int ,char*,...) ;

int RIOChangeName(struct rio_info *p, struct Map *MapP)
{
 int host;
 struct Map *HostMapP;
 char *sptr;

 rio_dprintk(RIO_DEBUG_TABLE, "Change name entry on host %x, rta %x, ID %d, Sysport %d\n", MapP->HostUniqueNum, MapP->RtaUniqueNum, MapP->ID, (int) MapP->SysPort);

 if (MapP->ID > MAX_RUP) {
  rio_dprintk(RIO_DEBUG_TABLE, "Bad ID in map entry!\n");
  p->RIOError.Error = ID_NUMBER_OUT_OF_RANGE;
  return -EINVAL;
 }

 MapP->Name[MAX_NAME_LEN - 1] = '\0';
 sptr = MapP->Name;

 while (*sptr) {
  if (*sptr < ' ' || *sptr > '~') {
   rio_dprintk(RIO_DEBUG_TABLE, "Name entry contains non-printing characters!\n");
   p->RIOError.Error = BAD_CHARACTER_IN_NAME;
   return -EINVAL;
  }
  sptr++;
 }

 for (host = 0; host < p->RIONumHosts; host++) {
  if (MapP->HostUniqueNum == p->RIOHosts[host].UniqueNum) {
   if ((p->RIOHosts[host].Flags & RUN_STATE) != RC_RUNNING) {
    p->RIOError.Error = HOST_NOT_RUNNING;
    return -ENXIO;
   }
   if (MapP->ID == 0) {
    memcpy(p->RIOHosts[host].Name, MapP->Name, MAX_NAME_LEN);
    return 0;
   }

   HostMapP = &p->RIOHosts[host].Mapping[MapP->ID - 1];

   if (HostMapP->RtaUniqueNum != MapP->RtaUniqueNum) {
    p->RIOError.Error = RTA_NUMBER_WRONG;
    return -ENXIO;
   }
   memcpy(HostMapP->Name, MapP->Name, MAX_NAME_LEN);
   return 0;
  }
 }
 p->RIOError.Error = UNKNOWN_HOST_NUMBER;
 rio_dprintk(RIO_DEBUG_TABLE, "Unknown host %x\n", MapP->HostUniqueNum);
 return -ENXIO;
}
