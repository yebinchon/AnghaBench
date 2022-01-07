
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned char DMM32AT_ADINT ;
 int DMM32AT_CLK1 ;
 int DMM32AT_CLK2 ;
 unsigned char DMM32AT_CLKACC ;
 int DMM32AT_CLKCT ;
 unsigned char DMM32AT_CLKCT1 ;
 unsigned char DMM32AT_CLKCT2 ;
 unsigned char DMM32AT_CLKSEL ;
 int DMM32AT_CNTRDIO ;
 int DMM32AT_CNTRL ;
 int DMM32AT_INTCLOCK ;
 int dmm_outb (struct comedi_device*,int ,unsigned char) ;

void dmm32at_setaitimer(struct comedi_device *dev, unsigned int nansec)
{
 unsigned char lo1, lo2, hi2;
 unsigned short both2;


 lo1 = 200;
 both2 = nansec / 20000;
 hi2 = (both2 & 0xff00) >> 8;
 lo2 = both2 & 0x00ff;


 dmm_outb(dev, DMM32AT_CNTRDIO, 0);


 dmm_outb(dev, DMM32AT_CNTRL, DMM32AT_CLKACC);


 dmm_outb(dev, DMM32AT_CLKCT, DMM32AT_CLKCT1);
 dmm_outb(dev, DMM32AT_CLK1, lo1);


 dmm_outb(dev, DMM32AT_CLKCT, DMM32AT_CLKCT2);
 dmm_outb(dev, DMM32AT_CLK2, lo2);
 dmm_outb(dev, DMM32AT_CLK2, hi2);


 dmm_outb(dev, DMM32AT_INTCLOCK, DMM32AT_ADINT | DMM32AT_CLKSEL);

}
