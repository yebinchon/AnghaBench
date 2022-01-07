
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ intparm; } ;
struct subchannel {struct subchannel* lock; TYPE_1__ config; int schid; } ;
struct device {int dummy; } ;


 int cio_commit_config (struct subchannel*) ;
 int cio_is_console (int ) ;
 int kfree (struct subchannel*) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static void
css_subchannel_release(struct device *dev)
{
 struct subchannel *sch;

 sch = to_subchannel(dev);
 if (!cio_is_console(sch->schid)) {

  sch->config.intparm = 0;
  cio_commit_config(sch);
  kfree(sch->lock);
  kfree(sch);
 }
}
