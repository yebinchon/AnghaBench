
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int IRQ_HANDLED ;
 int LOGIBM_CONTROL_PORT ;
 int LOGIBM_DATA_PORT ;
 int LOGIBM_ENABLE_IRQ ;
 int LOGIBM_READ_X_HIGH ;
 int LOGIBM_READ_X_LOW ;
 int LOGIBM_READ_Y_HIGH ;
 int LOGIBM_READ_Y_LOW ;
 int REL_X ;
 int REL_Y ;
 int inb (int ) ;
 int input_report_key (int ,int ,unsigned char) ;
 int input_report_rel (int ,int ,char) ;
 int input_sync (int ) ;
 int logibm_dev ;
 int outb (int ,int ) ;

__attribute__((used)) static irqreturn_t logibm_interrupt(int irq, void *dev_id)
{
 char dx, dy;
 unsigned char buttons;

 outb(LOGIBM_READ_X_LOW, LOGIBM_CONTROL_PORT);
 dx = (inb(LOGIBM_DATA_PORT) & 0xf);
 outb(LOGIBM_READ_X_HIGH, LOGIBM_CONTROL_PORT);
 dx |= (inb(LOGIBM_DATA_PORT) & 0xf) << 4;
 outb(LOGIBM_READ_Y_LOW, LOGIBM_CONTROL_PORT);
 dy = (inb(LOGIBM_DATA_PORT) & 0xf);
 outb(LOGIBM_READ_Y_HIGH, LOGIBM_CONTROL_PORT);
 buttons = inb(LOGIBM_DATA_PORT);
 dy |= (buttons & 0xf) << 4;
 buttons = ~buttons >> 5;

 input_report_rel(logibm_dev, REL_X, dx);
 input_report_rel(logibm_dev, REL_Y, dy);
 input_report_key(logibm_dev, BTN_RIGHT, buttons & 1);
 input_report_key(logibm_dev, BTN_MIDDLE, buttons & 2);
 input_report_key(logibm_dev, BTN_LEFT, buttons & 4);
 input_sync(logibm_dev);

 outb(LOGIBM_ENABLE_IRQ, LOGIBM_CONTROL_PORT);
 return IRQ_HANDLED;
}
