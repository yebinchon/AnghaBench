
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct atmel_tsadcc {int bufferedmeasure; int prev_absx; int prev_absy; struct input_dev* input; } ;
typedef int irqreturn_t ;


 int ABS_X ;
 int ABS_Y ;
 int ATMEL_TSADCC_CDR0 ;
 int ATMEL_TSADCC_CDR1 ;
 int ATMEL_TSADCC_CDR2 ;
 int ATMEL_TSADCC_CDR3 ;
 unsigned int ATMEL_TSADCC_EOC (int) ;
 int ATMEL_TSADCC_IDR ;
 int ATMEL_TSADCC_IER ;
 int ATMEL_TSADCC_IMR ;
 int ATMEL_TSADCC_MR ;
 unsigned int ATMEL_TSADCC_NOCNT ;
 unsigned int ATMEL_TSADCC_PENCNT ;
 unsigned int ATMEL_TSADCC_PENDBC ;
 int ATMEL_TSADCC_SR ;
 int ATMEL_TSADCC_TRGMOD_NONE ;
 int ATMEL_TSADCC_TRGMOD_PERIOD ;
 int ATMEL_TSADCC_TRGR ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int atmel_tsadcc_read (int ) ;
 int atmel_tsadcc_write (int ,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static irqreturn_t atmel_tsadcc_interrupt(int irq, void *dev)
{
 struct atmel_tsadcc *ts_dev = (struct atmel_tsadcc *)dev;
 struct input_dev *input_dev = ts_dev->input;

 unsigned int status;
 unsigned int reg;

 status = atmel_tsadcc_read(ATMEL_TSADCC_SR);
 status &= atmel_tsadcc_read(ATMEL_TSADCC_IMR);

 if (status & ATMEL_TSADCC_NOCNT) {

  reg = atmel_tsadcc_read(ATMEL_TSADCC_MR) | ATMEL_TSADCC_PENDBC;

  atmel_tsadcc_write(ATMEL_TSADCC_MR, reg);
  atmel_tsadcc_write(ATMEL_TSADCC_TRGR, ATMEL_TSADCC_TRGMOD_NONE);
  atmel_tsadcc_write(ATMEL_TSADCC_IDR,
       ATMEL_TSADCC_EOC(3) | ATMEL_TSADCC_NOCNT);
  atmel_tsadcc_write(ATMEL_TSADCC_IER, ATMEL_TSADCC_PENCNT);

  input_report_key(input_dev, BTN_TOUCH, 0);
  ts_dev->bufferedmeasure = 0;
  input_sync(input_dev);

 } else if (status & ATMEL_TSADCC_PENCNT) {

  reg = atmel_tsadcc_read(ATMEL_TSADCC_MR);
  reg &= ~ATMEL_TSADCC_PENDBC;

  atmel_tsadcc_write(ATMEL_TSADCC_IDR, ATMEL_TSADCC_PENCNT);
  atmel_tsadcc_write(ATMEL_TSADCC_MR, reg);
  atmel_tsadcc_write(ATMEL_TSADCC_IER,
       ATMEL_TSADCC_EOC(3) | ATMEL_TSADCC_NOCNT);
  atmel_tsadcc_write(ATMEL_TSADCC_TRGR,
       ATMEL_TSADCC_TRGMOD_PERIOD | (0x0FFF << 16));

 } else if (status & ATMEL_TSADCC_EOC(3)) {


  if (ts_dev->bufferedmeasure) {



   input_report_abs(input_dev, ABS_X, ts_dev->prev_absx);
   input_report_abs(input_dev, ABS_Y, ts_dev->prev_absy);
   input_report_key(input_dev, BTN_TOUCH, 1);
   input_sync(input_dev);
  } else
   ts_dev->bufferedmeasure = 1;


  ts_dev->prev_absx = atmel_tsadcc_read(ATMEL_TSADCC_CDR3) << 10;
  ts_dev->prev_absx /= atmel_tsadcc_read(ATMEL_TSADCC_CDR2);

  ts_dev->prev_absy = atmel_tsadcc_read(ATMEL_TSADCC_CDR1) << 10;
  ts_dev->prev_absy /= atmel_tsadcc_read(ATMEL_TSADCC_CDR0);
 }

 return IRQ_HANDLED;
}
