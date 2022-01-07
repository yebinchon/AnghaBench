
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ad_type; TYPE_2__* pcidev; TYPE_1__* enq; int slot_num; } ;
typedef TYPE_3__ ips_ha_t ;
struct TYPE_6__ {int device; int subsystem_device; int revision; } ;
struct TYPE_5__ {int ucMaxPhysicalDevices; } ;


 int IPS_ADTYPE_KIOWA ;
 int IPS_ADTYPE_NAVAJO ;
 int IPS_ADTYPE_SERVERAID ;
 int IPS_ADTYPE_SERVERAID2 ;
 int IPS_ADTYPE_SERVERAID3 ;
 int IPS_ADTYPE_SERVERAID3L ;
 int IPS_ADTYPE_SERVERAID4H ;
 int IPS_ADTYPE_SERVERAID4L ;
 int IPS_ADTYPE_SERVERAID4LX ;
 int IPS_ADTYPE_SERVERAID4M ;
 int IPS_ADTYPE_SERVERAID4MX ;
 int IPS_ADTYPE_SERVERAID5I1 ;
 int IPS_ADTYPE_SERVERAID5I2 ;
 int IPS_ADTYPE_SERVERAID6I ;
 int IPS_ADTYPE_SERVERAID6M ;
 int IPS_ADTYPE_SERVERAID7M ;
 int IPS_ADTYPE_SERVERAID7k ;



 int IPS_REVID_CLARINETP1 ;
 int IPS_REVID_CLARINETP3 ;
 int IPS_REVID_NAVAJO ;
 int IPS_REVID_SERVERAID ;
 int IPS_REVID_SERVERAID2 ;
 int IPS_REVID_TROMBONE32 ;
 int IPS_REVID_TROMBONE64 ;
 int METHOD_TRACE (char*,int) ;

__attribute__((used)) static void
ips_identify_controller(ips_ha_t * ha)
{
 METHOD_TRACE("ips_identify_controller", 1);

 switch (ha->pcidev->device) {
 case 140:
  if (ha->pcidev->revision <= IPS_REVID_SERVERAID) {
   ha->ad_type = IPS_ADTYPE_SERVERAID;
  } else if (ha->pcidev->revision == IPS_REVID_SERVERAID2) {
   ha->ad_type = IPS_ADTYPE_SERVERAID2;
  } else if (ha->pcidev->revision == IPS_REVID_NAVAJO) {
   ha->ad_type = IPS_ADTYPE_NAVAJO;
  } else if ((ha->pcidev->revision == IPS_REVID_SERVERAID2)
      && (ha->slot_num == 0)) {
   ha->ad_type = IPS_ADTYPE_KIOWA;
  } else if ((ha->pcidev->revision >= IPS_REVID_CLARINETP1) &&
      (ha->pcidev->revision <= IPS_REVID_CLARINETP3)) {
   if (ha->enq->ucMaxPhysicalDevices == 15)
    ha->ad_type = IPS_ADTYPE_SERVERAID3L;
   else
    ha->ad_type = IPS_ADTYPE_SERVERAID3;
  } else if ((ha->pcidev->revision >= IPS_REVID_TROMBONE32) &&
      (ha->pcidev->revision <= IPS_REVID_TROMBONE64)) {
   ha->ad_type = IPS_ADTYPE_SERVERAID4H;
  }
  break;

 case 138:
  switch (ha->pcidev->subsystem_device) {
  case 137:
   ha->ad_type = IPS_ADTYPE_SERVERAID4L;
   break;

  case 135:
   ha->ad_type = IPS_ADTYPE_SERVERAID4M;
   break;

  case 134:
   ha->ad_type = IPS_ADTYPE_SERVERAID4MX;
   break;

  case 136:
   ha->ad_type = IPS_ADTYPE_SERVERAID4LX;
   break;

  case 132:
   ha->ad_type = IPS_ADTYPE_SERVERAID5I2;
   break;

  case 133:
   ha->ad_type = IPS_ADTYPE_SERVERAID5I1;
   break;
  }

  break;

 case 139:
  switch (ha->pcidev->subsystem_device) {
  case 130:
   ha->ad_type = IPS_ADTYPE_SERVERAID6M;
   break;
  case 131:
   ha->ad_type = IPS_ADTYPE_SERVERAID6I;
   break;
  case 128:
   ha->ad_type = IPS_ADTYPE_SERVERAID7k;
   break;
  case 129:
   ha->ad_type = IPS_ADTYPE_SERVERAID7M;
   break;
  }
  break;
 }
}
