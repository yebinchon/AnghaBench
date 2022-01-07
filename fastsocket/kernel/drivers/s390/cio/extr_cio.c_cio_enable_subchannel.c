
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ena; scalar_t__ csense; int intparm; int isc; } ;
struct subchannel {int schid; TYPE_1__ config; int isc; int dev; } ;
struct irb {int dummy; } ;
typedef int ret ;


 int CIO_HEX_EVENT (int,int*,int) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int cio_commit_config (struct subchannel*) ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 char* dev_name (int *) ;
 scalar_t__ sch_is_pseudo_sch (struct subchannel*) ;
 scalar_t__ tsch (int ,struct irb*) ;

int cio_enable_subchannel(struct subchannel *sch, u32 intparm)
{
 int retry;
 int ret;

 CIO_TRACE_EVENT(2, "ensch");
 CIO_TRACE_EVENT(2, dev_name(&sch->dev));

 if (sch_is_pseudo_sch(sch))
  return -EINVAL;
 if (cio_update_schib(sch))
  return -ENODEV;

 sch->config.ena = 1;
 sch->config.isc = sch->isc;
 sch->config.intparm = intparm;

 for (retry = 0; retry < 3; retry++) {
  ret = cio_commit_config(sch);
  if (ret == -EIO) {




   sch->config.csense = 0;
  } else if (ret == -EBUSY) {
   struct irb irb;
   if (tsch(sch->schid, &irb) != 0)
    break;
  } else
   break;
 }
 CIO_HEX_EVENT(2, &ret, sizeof(ret));
 return ret;
}
