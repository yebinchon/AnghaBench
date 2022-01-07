
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int key; void* intparm; void* aob; } ;
union orb {TYPE_1__ eadm; } ;
typedef void* u32 ;
struct TYPE_7__ {int actl; } ;
struct TYPE_8__ {TYPE_2__ eadm; } ;
struct TYPE_9__ {TYPE_3__ scsw; } ;
struct subchannel {TYPE_4__ schib; int schid; } ;
struct aob {int dummy; } ;
typedef scalar_t__ addr_t ;
struct TYPE_10__ {union orb orb; } ;


 int EADM_LOG (int,char*) ;
 int EADM_LOG_HEX (int,int *,int) ;
 int EBUSY ;
 int ENODEV ;
 int PAGE_DEFAULT_KEY ;
 int SCSW_ACTL_START_PEND ;
 scalar_t__ __pa (struct aob*) ;
 TYPE_5__* get_eadm_private (struct subchannel*) ;
 int orb_init (union orb*) ;
 int ssch (int ,union orb*) ;

__attribute__((used)) static int eadm_subchannel_start(struct subchannel *sch, struct aob *aob)
{
 union orb *orb = &get_eadm_private(sch)->orb;
 int cc;

 orb_init(orb);
 orb->eadm.aob = (u32)__pa(aob);
 orb->eadm.intparm = (u32)(addr_t)sch;
 orb->eadm.key = PAGE_DEFAULT_KEY >> 4;

 EADM_LOG(6, "start");
 EADM_LOG_HEX(6, &sch->schid, sizeof(sch->schid));

 cc = ssch(sch->schid, orb);
 switch (cc) {
 case 0:
  sch->schib.scsw.eadm.actl |= SCSW_ACTL_START_PEND;
  break;
 case 1:
 case 2:
  return -EBUSY;
 case 3:
  return -ENODEV;
 }
 return 0;
}
