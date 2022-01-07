
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct comedi_device {scalar_t__ attached; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ plx9080_iobase; scalar_t__ main_iobase; } ;


 int DEBUG_PRINT (char*,...) ;
 scalar_t__ HW_STATUS_REG ;
 int ICS_LDIA ;
 int IRQ_HANDLED ;
 scalar_t__ PLX_DBR_OUT_REG ;
 scalar_t__ PLX_INTRCS_REG ;
 int handle_ai_interrupt (struct comedi_device*,unsigned short,int) ;
 int handle_ao_interrupt (struct comedi_device*,unsigned short,int) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int readl (scalar_t__) ;
 unsigned short readw (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t handle_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 unsigned short status;
 uint32_t plx_status;
 uint32_t plx_bits;

 plx_status = readl(priv(dev)->plx9080_iobase + PLX_INTRCS_REG);
 status = readw(priv(dev)->main_iobase + HW_STATUS_REG);

 DEBUG_PRINT("cb_pcidas64: hw status 0x%x ", status);
 DEBUG_PRINT("plx status 0x%x\n", plx_status);




 if (dev->attached == 0) {
  DEBUG_PRINT("cb_pcidas64: premature interrupt, ignoring",
       status);
  return IRQ_HANDLED;
 }
 handle_ai_interrupt(dev, status, plx_status);
 handle_ao_interrupt(dev, status, plx_status);


 if (plx_status & ICS_LDIA) {
  plx_bits = readl(priv(dev)->plx9080_iobase + PLX_DBR_OUT_REG);
  writel(plx_bits, priv(dev)->plx9080_iobase + PLX_DBR_OUT_REG);
  DEBUG_PRINT(" cleared local doorbell bits 0x%x\n", plx_bits);
 }

 DEBUG_PRINT("exiting handler\n");

 return IRQ_HANDLED;
}
