
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usb; } ;
struct cardstate {TYPE_1__ hw; int write_tasklet; } ;


 int kfree (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void gigaset_freecshw(struct cardstate *cs)
{
 tasklet_kill(&cs->write_tasklet);
 kfree(cs->hw.usb);
}
