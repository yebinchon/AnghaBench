
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong_t ;
struct rio_info {int dummy; } ;
struct Map {int dummy; } ;
struct Host {TYPE_2__* Mapping; } ;
struct TYPE_5__ {int ID2; TYPE_1__* Topology; } ;
struct TYPE_4__ {scalar_t__ Unit; } ;


 int LBOLT ;
 int LINKS_PER_UNIT ;
 int RIORemoveFromSavedTable (struct rio_info*,TYPE_2__*) ;
 int RIO_DEBUG_ROUTE ;
 scalar_t__ ROUTE_DISCONNECT ;
 scalar_t__* TentTime ;
 scalar_t__ WAIT_TO_FINISH ;
 scalar_t__ current_time ;
 scalar_t__ drv_getparm (int ,int *) ;
 scalar_t__ drv_hztousec (scalar_t__) ;
 scalar_t__ elapse_time ;
 int memset (TYPE_2__*,int ,int) ;
 int rio_dprintk (int ,char*,...) ;

__attribute__((used)) static int RIOFreeDisconnected(struct rio_info *p, struct Host *HostP, int unit)
{
 int link;


 rio_dprintk(RIO_DEBUG_ROUTE, "RIOFreeDisconnect unit %d\n", unit);





 for (link = 0; link < LINKS_PER_UNIT; link++) {
  if (HostP->Mapping[unit].Topology[link].Unit != ROUTE_DISCONNECT)
   break;
 }




 if (link < LINKS_PER_UNIT)
  return 1;
 if (HostP->Mapping[unit].ID2 != 0) {
  int nOther = (HostP->Mapping[unit].ID2) - 1;

  rio_dprintk(RIO_DEBUG_ROUTE, "RioFreedis second slot %d.\n", nOther);
  memset(&HostP->Mapping[nOther], 0, sizeof(struct Map));
 }
 RIORemoveFromSavedTable(p, &HostP->Mapping[unit]);

 return 0;
}
