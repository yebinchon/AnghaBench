
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int sch_no; int ssid; } ;
struct TYPE_7__ {int fctl; } ;
struct TYPE_8__ {TYPE_2__ cmd; } ;
struct TYPE_9__ {TYPE_3__ scsw; } ;
struct subchannel {int dev; TYPE_5__ schid; int lock; TYPE_4__ schib; struct chsc_private* private; } ;
struct chsc_request {int dummy; } ;
struct chsc_private {struct chsc_request* request; } ;
struct TYPE_6__ {TYPE_5__ sid; int key; } ;
struct chsc_async_area {TYPE_1__ header; } ;


 int CHSC_LOG (int,char*) ;
 int CHSC_LOG_HEX (int,TYPE_5__*,int) ;
 int CHSC_MSG (int,char*,int ,int ,int) ;
 int EBUSY ;
 int EINPROGRESS ;
 int ENODEV ;
 int PAGE_DEFAULT_KEY ;
 int SCSW_FCTL_START_FUNC ;
 int chsc (struct chsc_async_area*) ;
 struct subchannel* chsc_get_next_subchannel (struct subchannel*) ;
 int put_device (int *) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int chsc_async(struct chsc_async_area *chsc_area,
        struct chsc_request *request)
{
 int cc;
 struct chsc_private *private;
 struct subchannel *sch = ((void*)0);
 int ret = -ENODEV;
 char dbf[10];

 chsc_area->header.key = PAGE_DEFAULT_KEY;
 while ((sch = chsc_get_next_subchannel(sch))) {
  spin_lock(sch->lock);
  private = sch->private;
  if (private->request) {
   spin_unlock(sch->lock);
   ret = -EBUSY;
   continue;
  }
  chsc_area->header.sid = sch->schid;
  CHSC_LOG(2, "schid");
  CHSC_LOG_HEX(2, &sch->schid, sizeof(sch->schid));
  cc = chsc(chsc_area);
  sprintf(dbf, "cc:%d", cc);
  CHSC_LOG(2, dbf);
  switch (cc) {
  case 0:
   ret = 0;
   break;
  case 1:
   sch->schib.scsw.cmd.fctl |= SCSW_FCTL_START_FUNC;
   ret = -EINPROGRESS;
   private->request = request;
   break;
  case 2:
   ret = -EBUSY;
   break;
  default:
   ret = -ENODEV;
  }
  spin_unlock(sch->lock);
  CHSC_MSG(2, "chsc on 0.%x.%04x returned cc=%d\n",
    sch->schid.ssid, sch->schid.sch_no, cc);
  if (ret == -EINPROGRESS)
   return -EINPROGRESS;
  put_device(&sch->dev);
  if (ret == 0)
   return 0;
 }
 return ret;
}
