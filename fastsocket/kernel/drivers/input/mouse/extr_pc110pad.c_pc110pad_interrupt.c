
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int inb_p (int) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int outb (int,int) ;
 int pc110pad_count ;
 int* pc110pad_data ;
 int pc110pad_dev ;
 int pc110pad_io ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t pc110pad_interrupt(int irq, void *ptr)
{
 int value = inb_p(pc110pad_io);
 int handshake = inb_p(pc110pad_io + 2);

 outb(handshake | 1, pc110pad_io + 2);
 udelay(2);
 outb(handshake & ~1, pc110pad_io + 2);
 udelay(2);
 inb_p(0x64);

 pc110pad_data[pc110pad_count++] = value;

 if (pc110pad_count < 3)
  return IRQ_HANDLED;

 input_report_key(pc110pad_dev, BTN_TOUCH,
  pc110pad_data[0] & 0x01);
 input_report_abs(pc110pad_dev, ABS_X,
  pc110pad_data[1] | ((pc110pad_data[0] << 3) & 0x80) | ((pc110pad_data[0] << 1) & 0x100));
 input_report_abs(pc110pad_dev, ABS_Y,
  pc110pad_data[2] | ((pc110pad_data[0] << 4) & 0x80));
 input_sync(pc110pad_dev);

 pc110pad_count = 0;
 return IRQ_HANDLED;
}
