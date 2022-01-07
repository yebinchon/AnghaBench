
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rio_info {scalar_t__ RIOPrintDisabled; } ;
struct Host {TYPE_2__* Mapping; } ;
struct TYPE_4__ {int Flags; TYPE_1__* Topology; int Name; } ;
struct TYPE_3__ {unsigned int Unit; int Link; } ;


 int BEEN_HERE ;
 scalar_t__ DO_PRINT ;
 unsigned int LINKS_PER_UNIT ;
 unsigned int MAX_RUP ;
 int NO_LINK ;
 int RIO_DEBUG_ROUTE ;
 unsigned int ROUTE_DISCONNECT ;
 int rio_dprintk (int ,char*,int ) ;

__attribute__((used)) static int RIOIsolate(struct rio_info *p, struct Host *HostP, unsigned int UnitId)
{
 unsigned int link, unit;

 UnitId--;

 if (UnitId >= MAX_RUP)
  return (0);

 if (HostP->Mapping[UnitId].Flags & BEEN_HERE)
  return (0);

 HostP->Mapping[UnitId].Flags |= BEEN_HERE;

 if (p->RIOPrintDisabled == DO_PRINT)
  rio_dprintk(RIO_DEBUG_ROUTE, "RIOMesgIsolated %s", HostP->Mapping[UnitId].Name);

 for (link = 0; link < LINKS_PER_UNIT; link++) {
  unit = HostP->Mapping[UnitId].Topology[link].Unit;
  HostP->Mapping[UnitId].Topology[link].Unit = ROUTE_DISCONNECT;
  HostP->Mapping[UnitId].Topology[link].Link = NO_LINK;
  RIOIsolate(p, HostP, unit);
 }
 HostP->Mapping[UnitId].Flags &= ~BEEN_HERE;
 return 1;
}
