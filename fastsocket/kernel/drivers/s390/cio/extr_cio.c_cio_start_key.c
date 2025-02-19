
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fmt; int pfch; int ssic; int c64; scalar_t__ cpa; scalar_t__ key; scalar_t__ i2k; scalar_t__ lpm; scalar_t__ spnd; scalar_t__ intparm; } ;
union orb {TYPE_2__ cmd; } ;
typedef scalar_t__ u32 ;
struct TYPE_9__ {int actl; } ;
struct TYPE_10__ {TYPE_3__ cmd; } ;
struct TYPE_11__ {TYPE_4__ scsw; } ;
struct TYPE_7__ {scalar_t__ prefetch; scalar_t__ inter; scalar_t__ suspend; } ;
struct subchannel {scalar_t__ lpm; TYPE_5__ schib; int schid; TYPE_1__ options; int dev; } ;
struct ccw1 {int dummy; } ;
typedef int ccode ;
typedef scalar_t__ addr_t ;
typedef scalar_t__ __u8 ;
typedef scalar_t__ __u32 ;
struct TYPE_12__ {union orb orb; } ;


 int CIO_HEX_EVENT (int,int*,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int EBUSY ;
 int SCSW_ACTL_START_PEND ;
 scalar_t__ __pa (struct ccw1*) ;
 int cio_start_handle_notoper (struct subchannel*,scalar_t__) ;
 char* dev_name (int *) ;
 int memset (union orb*,int ,int) ;
 int ssch (int ,union orb*) ;
 TYPE_6__* to_io_private (struct subchannel*) ;

int
cio_start_key (struct subchannel *sch,
        struct ccw1 * cpa,
        __u8 lpm,
        __u8 key)
{
 int ccode;
 union orb *orb;

 CIO_TRACE_EVENT(5, "stIO");
 CIO_TRACE_EVENT(5, dev_name(&sch->dev));

 orb = &to_io_private(sch)->orb;
 memset(orb, 0, sizeof(union orb));

 orb->cmd.intparm = (u32)(addr_t)sch;
 orb->cmd.fmt = 1;

 orb->cmd.pfch = sch->options.prefetch == 0;
 orb->cmd.spnd = sch->options.suspend;
 orb->cmd.ssic = sch->options.suspend && sch->options.inter;
 orb->cmd.lpm = (lpm != 0) ? lpm : sch->lpm;







 orb->cmd.key = key >> 4;

 orb->cmd.cpa = (__u32) __pa(cpa);
 ccode = ssch(sch->schid, orb);


 CIO_HEX_EVENT(5, &ccode, sizeof(ccode));

 switch (ccode) {
 case 0:



  sch->schib.scsw.cmd.actl |= SCSW_ACTL_START_PEND;
  return 0;
 case 1:
 case 2:
  return -EBUSY;
 case 3:
  return cio_start_handle_notoper(sch, lpm);
 default:
  return ccode;
 }
}
