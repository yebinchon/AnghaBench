
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int mbfc; unsigned long mba; unsigned long mbi; int mme; } ;
struct subchannel {TYPE_2__ config; } ;
struct TYPE_3__ {int parent; } ;
struct ccw_device {TYPE_1__ dev; } ;


 int cio_commit_config (struct subchannel*) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static int set_schib(struct ccw_device *cdev, u32 mme, int mbfc,
       unsigned long address)
{
 struct subchannel *sch;

 sch = to_subchannel(cdev->dev.parent);

 sch->config.mme = mme;
 sch->config.mbfc = mbfc;

 if (mbfc)
  sch->config.mba = address;
 else
  sch->config.mbi = address;

 return cio_commit_config(sch);
}
