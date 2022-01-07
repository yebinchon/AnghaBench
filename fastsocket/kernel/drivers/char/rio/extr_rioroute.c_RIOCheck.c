
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Host {TYPE_2__* Mapping; } ;
struct TYPE_4__ {int Flags; TYPE_1__* Topology; } ;
struct TYPE_3__ {unsigned int Unit; } ;


 int BEEN_HERE ;
 unsigned int HOST_ID ;
 unsigned char LINKS_PER_UNIT ;
 unsigned int MAX_RUP ;
 int RIO_DEBUG_ROUTE ;
 int rio_dprintk (int ,char*,unsigned int) ;

__attribute__((used)) static int RIOCheck(struct Host *HostP, unsigned int UnitId)
{
 unsigned char link;


 rio_dprintk(RIO_DEBUG_ROUTE, "RIOCheck : UnitID = %d\n", UnitId);

 if (UnitId == HOST_ID) {

  return 1;
 }

 UnitId--;

 if (UnitId >= MAX_RUP) {

  return 0;
 }

 for (link = 0; link < LINKS_PER_UNIT; link++) {
  if (HostP->Mapping[UnitId].Topology[link].Unit == HOST_ID) {


   return 1;
  }
 }

 if (HostP->Mapping[UnitId].Flags & BEEN_HERE) {

  return 0;
 }

 HostP->Mapping[UnitId].Flags |= BEEN_HERE;

 for (link = 0; link < LINKS_PER_UNIT; link++) {

  if (RIOCheck(HostP, HostP->Mapping[UnitId].Topology[link].Unit)) {

   HostP->Mapping[UnitId].Flags &= ~BEEN_HERE;
   return 1;
  }
 }

 HostP->Mapping[UnitId].Flags &= ~BEEN_HERE;



 return 0;
}
