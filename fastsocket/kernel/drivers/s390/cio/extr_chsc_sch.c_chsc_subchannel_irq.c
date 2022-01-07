
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sch_no; int ssid; } ;
struct subchannel {int dev; TYPE_1__ schid; struct chsc_private* private; } ;
struct irb {int dummy; } ;
struct chsc_request {int completion; int irb; } ;
struct chsc_private {struct chsc_request* request; } ;


 int CHSC_LOG (int,char*) ;
 int CHSC_LOG_HEX (int,struct irb*,int) ;
 int CHSC_MSG (int ,char*,int ,int ) ;
 scalar_t__ __LC_IRB ;
 int cio_update_schib (struct subchannel*) ;
 int complete (int *) ;
 int memcpy (int *,struct irb*,int) ;
 int put_device (int *) ;

__attribute__((used)) static void chsc_subchannel_irq(struct subchannel *sch)
{
 struct chsc_private *private = sch->private;
 struct chsc_request *request = private->request;
 struct irb *irb = (struct irb *)__LC_IRB;

 CHSC_LOG(4, "irb");
 CHSC_LOG_HEX(4, irb, sizeof(*irb));

 if (!request) {
  CHSC_MSG(0, "Interrupt on sch 0.%x.%04x with no request\n",
    sch->schid.ssid, sch->schid.sch_no);
  return;
 }
 private->request = ((void*)0);
 memcpy(&request->irb, irb, sizeof(*irb));
 cio_update_schib(sch);
 complete(&request->completion);
 put_device(&sch->dev);
}
