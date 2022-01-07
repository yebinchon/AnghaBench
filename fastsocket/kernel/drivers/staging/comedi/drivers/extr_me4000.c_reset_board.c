
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ me4000_regbase; scalar_t__ plx_regbase; } ;


 int CALL_PDEBUG (char*) ;
 int ME4000_AI_CTRL_BIT_IMMEDIATE_STOP ;
 int ME4000_AI_CTRL_BIT_STOP ;
 scalar_t__ ME4000_AI_CTRL_REG ;
 scalar_t__ ME4000_AO_00_CTRL_REG ;
 scalar_t__ ME4000_AO_00_SINGLE_REG ;
 scalar_t__ ME4000_AO_01_CTRL_REG ;
 scalar_t__ ME4000_AO_01_SINGLE_REG ;
 scalar_t__ ME4000_AO_02_CTRL_REG ;
 scalar_t__ ME4000_AO_02_SINGLE_REG ;
 scalar_t__ ME4000_AO_03_CTRL_REG ;
 scalar_t__ ME4000_AO_03_SINGLE_REG ;
 int ME4000_AO_CTRL_BIT_IMMEDIATE_STOP ;
 int ME4000_AO_CTRL_BIT_STOP ;
 scalar_t__ ME4000_AO_DEMUX_ADJUST_REG ;
 int ME4000_AO_DEMUX_ADJUST_VALUE ;
 scalar_t__ ME4000_DIO_CTRL_REG ;
 scalar_t__ ME4000_DIO_DIR_REG ;
 scalar_t__ PLX_ICR ;
 scalar_t__ PLX_INTCSR ;
 TYPE_1__* info ;
 int me4000_inl (struct comedi_device*,scalar_t__) ;
 int me4000_outl (struct comedi_device*,int,scalar_t__) ;

__attribute__((used)) static int reset_board(struct comedi_device *dev)
{
 unsigned long icr;

 CALL_PDEBUG("In reset_board()\n");


 icr = me4000_inl(dev, info->plx_regbase + PLX_ICR);
 icr |= 0x40000000;
 me4000_outl(dev, icr, info->plx_regbase + PLX_ICR);
 icr &= ~0x40000000;
 me4000_outl(dev, icr, info->plx_regbase + PLX_ICR);


 me4000_outl(dev, 0x8000,
      info->me4000_regbase + ME4000_AO_00_SINGLE_REG);
 me4000_outl(dev, 0x8000,
      info->me4000_regbase + ME4000_AO_01_SINGLE_REG);
 me4000_outl(dev, 0x8000,
      info->me4000_regbase + ME4000_AO_02_SINGLE_REG);
 me4000_outl(dev, 0x8000,
      info->me4000_regbase + ME4000_AO_03_SINGLE_REG);


 me4000_outl(dev,
      ME4000_AI_CTRL_BIT_IMMEDIATE_STOP | ME4000_AI_CTRL_BIT_STOP,
      info->me4000_regbase + ME4000_AI_CTRL_REG);


 me4000_outl(dev,
      ME4000_AO_CTRL_BIT_IMMEDIATE_STOP | ME4000_AO_CTRL_BIT_STOP,
      info->me4000_regbase + ME4000_AO_00_CTRL_REG);
 me4000_outl(dev,
      ME4000_AO_CTRL_BIT_IMMEDIATE_STOP | ME4000_AO_CTRL_BIT_STOP,
      info->me4000_regbase + ME4000_AO_01_CTRL_REG);
 me4000_outl(dev,
      ME4000_AO_CTRL_BIT_IMMEDIATE_STOP | ME4000_AO_CTRL_BIT_STOP,
      info->me4000_regbase + ME4000_AO_02_CTRL_REG);
 me4000_outl(dev,
      ME4000_AO_CTRL_BIT_IMMEDIATE_STOP | ME4000_AO_CTRL_BIT_STOP,
      info->me4000_regbase + ME4000_AO_03_CTRL_REG);


 me4000_outl(dev, 0x43, info->plx_regbase + PLX_INTCSR);


 me4000_outl(dev, ME4000_AO_DEMUX_ADJUST_VALUE,
      info->me4000_regbase + ME4000_AO_DEMUX_ADJUST_REG);


 if (!(me4000_inl(dev, info->me4000_regbase + ME4000_DIO_DIR_REG) & 0x1)) {
  me4000_outl(dev, 0x1,
       info->me4000_regbase + ME4000_DIO_CTRL_REG);
 }

 return 0;
}
