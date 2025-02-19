
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_4__ {unsigned short joy0dat; unsigned short potgor; } ;
struct TYPE_3__ {int pra; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int IRQ_HANDLED ;
 int REL_X ;
 int REL_Y ;
 TYPE_2__ amiga_custom ;
 int amimouse_dev ;
 int amimouse_lastx ;
 int amimouse_lasty ;
 TYPE_1__ ciaa ;
 int input_report_key (int ,int ,unsigned short) ;
 int input_report_rel (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t amimouse_interrupt(int irq, void *dummy)
{
 unsigned short joy0dat, potgor;
 int nx, ny, dx, dy;

 joy0dat = amiga_custom.joy0dat;

 nx = joy0dat & 0xff;
 ny = joy0dat >> 8;

 dx = nx - amimouse_lastx;
 dy = ny - amimouse_lasty;

 if (dx < -127) dx = (256 + nx) - amimouse_lastx;
 if (dx > 127) dx = (nx - 256) - amimouse_lastx;
 if (dy < -127) dy = (256 + ny) - amimouse_lasty;
 if (dy > 127) dy = (ny - 256) - amimouse_lasty;

 amimouse_lastx = nx;
 amimouse_lasty = ny;

 potgor = amiga_custom.potgor;

 input_report_rel(amimouse_dev, REL_X, dx);
 input_report_rel(amimouse_dev, REL_Y, dy);

 input_report_key(amimouse_dev, BTN_LEFT, ciaa.pra & 0x40);
 input_report_key(amimouse_dev, BTN_MIDDLE, potgor & 0x0100);
 input_report_key(amimouse_dev, BTN_RIGHT, potgor & 0x0400);

 input_sync(amimouse_dev);

 return IRQ_HANDLED;
}
