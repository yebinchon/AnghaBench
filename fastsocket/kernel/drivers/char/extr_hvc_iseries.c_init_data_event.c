
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HvLpEvent {int flags; int xSubtype; int xSizeMinus1; int xTargetInstanceId; int xSourceInstanceId; int xTargetLp; int xSourceLp; int xType; } ;
struct viocharlpevent {struct HvLpEvent event; } ;
typedef int HvLpIndex ;


 int HV_LP_EVENT_DEFERRED_ACK ;
 int HV_LP_EVENT_INT ;
 int HV_LP_EVENT_VALID ;
 int HvLpConfig_getLpIndex () ;
 int HvLpEvent_Type_VirtualIo ;
 int memset (struct viocharlpevent*,int ,int) ;
 int viochardata ;
 int viomajorsubtype_chario ;
 int viopath_sourceinst (int ) ;
 int viopath_targetinst (int ) ;

__attribute__((used)) static void init_data_event(struct viocharlpevent *viochar, HvLpIndex lp)
{
 struct HvLpEvent *hev = &viochar->event;

 memset(viochar, 0, sizeof(struct viocharlpevent));

 hev->flags = HV_LP_EVENT_VALID | HV_LP_EVENT_DEFERRED_ACK |
  HV_LP_EVENT_INT;
 hev->xType = HvLpEvent_Type_VirtualIo;
 hev->xSubtype = viomajorsubtype_chario | viochardata;
 hev->xSourceLp = HvLpConfig_getLpIndex();
 hev->xTargetLp = lp;
 hev->xSizeMinus1 = sizeof(struct viocharlpevent);
 hev->xSourceInstanceId = viopath_sourceinst(lp);
 hev->xTargetInstanceId = viopath_targetinst(lp);
}
