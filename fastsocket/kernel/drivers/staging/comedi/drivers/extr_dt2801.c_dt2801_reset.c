
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int DPRINTK (char*,...) ;
 scalar_t__ DT2801_CMD ;
 scalar_t__ DT2801_DATA ;
 scalar_t__ DT2801_STATUS ;
 int DT_C_RESET ;
 int DT_C_STOP ;
 unsigned int DT_S_READY ;
 int dt2801_readdata (struct comedi_device*,int*) ;
 unsigned int inb_p (scalar_t__) ;
 int outb_p (int ,scalar_t__) ;
 int printk (char*,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static int dt2801_reset(struct comedi_device *dev)
{
 int board_code = 0;
 unsigned int stat;
 int timeout;

 DPRINTK("dt2801: resetting board...\n");
 DPRINTK("fingerprint: 0x%02x 0x%02x\n", inb_p(dev->iobase),
  inb_p(dev->iobase + 1));


 inb_p(dev->iobase + DT2801_DATA);
 inb_p(dev->iobase + DT2801_DATA);
 inb_p(dev->iobase + DT2801_DATA);
 inb_p(dev->iobase + DT2801_DATA);

 DPRINTK("dt2801: stop\n");

 outb_p(DT_C_STOP, dev->iobase + DT2801_CMD);


 udelay(100);
 timeout = 10000;
 do {
  stat = inb_p(dev->iobase + DT2801_STATUS);
  if (stat & DT_S_READY)
   break;
 } while (timeout--);
 if (!timeout) {
  printk("dt2801: timeout 1 status=0x%02x\n", stat);
 }




 DPRINTK("dt2801: reset\n");
 outb_p(DT_C_RESET, dev->iobase + DT2801_CMD);


 udelay(100);
 timeout = 10000;
 do {
  stat = inb_p(dev->iobase + DT2801_STATUS);
  if (stat & DT_S_READY)
   break;
 } while (timeout--);
 if (!timeout) {
  printk("dt2801: timeout 2 status=0x%02x\n", stat);
 }

 DPRINTK("dt2801: reading code\n");
 dt2801_readdata(dev, &board_code);

 DPRINTK("dt2801: ok.  code=0x%02x\n", board_code);

 return board_code;
}
