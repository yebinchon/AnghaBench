
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* ser; } ;
struct cardstate {TYPE_1__ hw; int write_tasklet; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;


 int dev_set_drvdata (int *,int *) ;
 int kfree (TYPE_3__*) ;
 int platform_device_unregister (TYPE_2__*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void gigaset_freecshw(struct cardstate *cs)
{
 tasklet_kill(&cs->write_tasklet);
 if (!cs->hw.ser)
  return;
 dev_set_drvdata(&cs->hw.ser->dev.dev, ((void*)0));
 platform_device_unregister(&cs->hw.ser->dev);
 kfree(cs->hw.ser);
 cs->hw.ser = ((void*)0);
}
