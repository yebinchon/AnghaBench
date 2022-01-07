
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int dev; struct chsc_private* private; } ;
struct chsc_private {TYPE_1__* request; } ;
struct TYPE_2__ {int completion; } ;


 int cio_disable_subchannel (struct subchannel*) ;
 int complete (int *) ;
 int kfree (struct chsc_private*) ;
 int put_device (int *) ;

__attribute__((used)) static int chsc_subchannel_remove(struct subchannel *sch)
{
 struct chsc_private *private;

 cio_disable_subchannel(sch);
 private = sch->private;
 sch->private = ((void*)0);
 if (private->request) {
  complete(&private->request->completion);
  put_device(&sch->dev);
 }
 kfree(private);
 return 0;
}
