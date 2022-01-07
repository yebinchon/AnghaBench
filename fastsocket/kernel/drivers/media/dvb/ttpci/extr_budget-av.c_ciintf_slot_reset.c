
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct TYPE_2__ {int dvb_frontend; struct saa7146_dev* dev; } ;
struct budget_av {TYPE_1__ budget; scalar_t__ reinitialise_demod; int slot_status; } ;


 int BUDGET_VIDEO_PORTB ;
 int EINVAL ;
 int SAA7146_GPIO_OUTHI ;
 int SAA7146_GPIO_OUTLO ;
 int SLOTSTATUS_RESET ;
 int dprintk (int,char*) ;
 int dvb_frontend_reinitialise (int ) ;
 int msleep (int) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int ttpci_budget_set_video_port (struct saa7146_dev*,int ) ;

__attribute__((used)) static int ciintf_slot_reset(struct dvb_ca_en50221 *ca, int slot)
{
 struct budget_av *budget_av = (struct budget_av *) ca->data;
 struct saa7146_dev *saa = budget_av->budget.dev;

 if (slot != 0)
  return -EINVAL;

 dprintk(1, "ciintf_slot_reset\n");
 budget_av->slot_status = SLOTSTATUS_RESET;

 saa7146_setgpio(saa, 2, SAA7146_GPIO_OUTHI);

 saa7146_setgpio(saa, 0, SAA7146_GPIO_OUTHI);
 msleep(2);
 saa7146_setgpio(saa, 0, SAA7146_GPIO_OUTLO);
 msleep(20);

 saa7146_setgpio(saa, 2, SAA7146_GPIO_OUTLO);
 ttpci_budget_set_video_port(saa, BUDGET_VIDEO_PORTB);
 msleep(20);


 if (budget_av->reinitialise_demod)
  dvb_frontend_reinitialise(budget_av->budget.dvb_frontend);

 return 0;
}
