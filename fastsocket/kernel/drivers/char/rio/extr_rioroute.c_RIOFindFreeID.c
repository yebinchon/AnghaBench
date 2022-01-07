
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_info {int dummy; } ;
struct Map {int dummy; } ;
struct Host {TYPE_1__* Mapping; } ;
struct TYPE_2__ {int Flags; } ;


 int MAX_RUP ;
 scalar_t__ RIOFreeDisconnected (struct rio_info*,struct Host*,int) ;
 int RIO_DEBUG_ROUTE ;
 int RTA16_SECOND_SLOT ;
 int SLOT_TENTATIVE ;
 int memset (TYPE_1__*,int ,int) ;
 int rio_dprintk (int ,char*,...) ;

int RIOFindFreeID(struct rio_info *p, struct Host *HostP, unsigned int * pID1, unsigned int * pID2)
{
 int unit, tempID;






 *pID1 = MAX_RUP;
 if (pID2 != ((void*)0))
  *pID2 = MAX_RUP;






 for (unit = 0; unit < MAX_RUP; unit++) {
  rio_dprintk(RIO_DEBUG_ROUTE, "Scanning unit %d\n", unit);



  if (HostP->Mapping[unit].Flags == 0) {
   rio_dprintk(RIO_DEBUG_ROUTE, "      This slot is empty.\n");



   if (*pID1 == MAX_RUP) {
    rio_dprintk(RIO_DEBUG_ROUTE, "Make tentative entry for first unit %d\n", unit);
    *pID1 = unit;





    if (pID2 == ((void*)0))
     return 0;
   } else {



    rio_dprintk(RIO_DEBUG_ROUTE, "Make tentative entry for second unit %d\n", unit);
    *pID2 = unit;
    return 0;
   }
  }
 }






 rio_dprintk(RIO_DEBUG_ROUTE, "Starting to scan for tentative slots\n");
 for (unit = 0; unit < MAX_RUP; unit++) {
  if (((HostP->Mapping[unit].Flags & SLOT_TENTATIVE) || (HostP->Mapping[unit].Flags == 0)) && !(HostP->Mapping[unit].Flags & RTA16_SECOND_SLOT)) {
   rio_dprintk(RIO_DEBUG_ROUTE, "    Slot %d looks promising.\n", unit);

   if (unit == *pID1) {
    rio_dprintk(RIO_DEBUG_ROUTE, "    No it isn't, its the 1st half\n");
    continue;
   }
   if (HostP->Mapping[unit].Flags != 0)
    if (RIOFreeDisconnected(p, HostP, unit) != 0)
     continue;



   if (*pID1 == MAX_RUP) {
    rio_dprintk(RIO_DEBUG_ROUTE, "Grab tentative entry for first unit %d\n", unit);
    *pID1 = unit;




    memset(&HostP->Mapping[unit], 0, sizeof(struct Map));





    if (pID2 == ((void*)0))
     return 0;
   } else {



    rio_dprintk(RIO_DEBUG_ROUTE, "Grab tentative/empty  entry for second unit %d\n", unit);
    *pID2 = unit;




    memset(&HostP->Mapping[unit], 0, sizeof(struct Map));
    if (*pID1 > *pID2) {
     rio_dprintk(RIO_DEBUG_ROUTE, "Swapping IDS %d %d\n", *pID1, *pID2);
     tempID = *pID1;
     *pID1 = *pID2;
     *pID2 = tempID;
    }
    return 0;
   }
  }
 }





 return 1;
}
