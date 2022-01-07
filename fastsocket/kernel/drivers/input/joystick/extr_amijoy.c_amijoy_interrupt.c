
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_4__ {int joy0dat; int joy1dat; } ;
struct TYPE_3__ {int pra; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TRIGGER ;
 int IRQ_HANDLED ;
 TYPE_2__ amiga_custom ;
 scalar_t__* amijoy ;
 int * amijoy_dev ;
 TYPE_1__ ciaa ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t amijoy_interrupt(int irq, void *dummy)
{
 int i, data = 0, button = 0;

 for (i = 0; i < 2; i++)
  if (amijoy[i]) {

   switch (i) {
    case 0: data = ~amiga_custom.joy0dat; button = (~ciaa.pra >> 6) & 1; break;
    case 1: data = ~amiga_custom.joy1dat; button = (~ciaa.pra >> 7) & 1; break;
   }

   input_report_key(amijoy_dev[i], BTN_TRIGGER, button);

   input_report_abs(amijoy_dev[i], ABS_X, ((data >> 1) & 1) - ((data >> 9) & 1));
   data = ~(data ^ (data << 1));
   input_report_abs(amijoy_dev[i], ABS_Y, ((data >> 1) & 1) - ((data >> 9) & 1));

   input_sync(amijoy_dev[i]);
  }
 return IRQ_HANDLED;
}
