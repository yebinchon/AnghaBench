
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;


 int PM_EVENT_SLEEP ;
 int dev_dbg (struct device*,char*,char*,int ,char*) ;
 scalar_t__ device_may_wakeup (struct device*) ;
 int pm_verb (int) ;

__attribute__((used)) static void pm_dev_dbg(struct device *dev, pm_message_t state, char *info)
{
 dev_dbg(dev, "%s%s%s\n", info, pm_verb(state.event),
  ((state.event & PM_EVENT_SLEEP) && device_may_wakeup(dev)) ?
  ", may wakeup" : "");
}
