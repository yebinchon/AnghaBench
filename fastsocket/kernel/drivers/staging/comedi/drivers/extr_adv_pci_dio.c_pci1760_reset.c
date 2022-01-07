
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int* CntMatchValue; int* CntResValue; int IDICntEdge; int IDIFiltersEn; int IDIPatMatchEn; int IDIPatMatchValue; scalar_t__ IDICntMatchEnable; scalar_t__ IDICntOverEnable; scalar_t__ IDICntEnable; scalar_t__ GlobalIrqEnabled; } ;


 unsigned char CMD_EdgeIDICounters ;
 unsigned char CMD_EnableIDICounters ;
 unsigned char CMD_EnableIDIFilters ;
 unsigned char CMD_EnableIDIPatternMatch ;
 unsigned char CMD_MatchIntIDICounters ;
 unsigned char CMD_OverflowIDICounters ;
 unsigned char CMD_ResetIDICounters ;
 int CMD_SetIDI0CntMatchValue ;
 int CMD_SetIDI0CntResetValue ;
 unsigned char CMD_SetIDIPatternMatch ;
 unsigned char CMD_SetRelaysOutput ;
 scalar_t__ INTCSR0 ;
 scalar_t__ INTCSR1 ;
 scalar_t__ INTCSR2 ;
 scalar_t__ INTCSR3 ;
 TYPE_1__* devpriv ;
 int outb (int ,scalar_t__) ;
 int pci1760_mbxrequest (struct comedi_device*,unsigned char*,unsigned char*) ;

__attribute__((used)) static int pci1760_reset(struct comedi_device *dev)
{
 int i;
 unsigned char omb[4] = { 0x00, 0x00, 0x00, 0x00 };
 unsigned char imb[4];

 outb(0, dev->iobase + INTCSR0);
 outb(0, dev->iobase + INTCSR1);
 outb(0, dev->iobase + INTCSR2);
 outb(0, dev->iobase + INTCSR3);
 devpriv->GlobalIrqEnabled = 0;

 omb[0] = 0x00;
 omb[2] = CMD_SetRelaysOutput;
 pci1760_mbxrequest(dev, omb, imb);

 omb[0] = 0x00;
 omb[2] = CMD_EnableIDICounters;
 pci1760_mbxrequest(dev, omb, imb);
 devpriv->IDICntEnable = 0;

 omb[0] = 0x00;
 omb[2] = CMD_OverflowIDICounters;
 pci1760_mbxrequest(dev, omb, imb);
 devpriv->IDICntOverEnable = 0;

 omb[0] = 0x00;
 omb[2] = CMD_MatchIntIDICounters;
 pci1760_mbxrequest(dev, omb, imb);
 devpriv->IDICntMatchEnable = 0;

 omb[0] = 0x00;
 omb[1] = 0x80;
 for (i = 0; i < 8; i++) {
  omb[2] = CMD_SetIDI0CntMatchValue + i;
  pci1760_mbxrequest(dev, omb, imb);
  devpriv->CntMatchValue[i] = 0x8000;
 }

 omb[0] = 0x00;
 omb[1] = 0x00;
 for (i = 0; i < 8; i++) {
  omb[2] = CMD_SetIDI0CntResetValue + i;
  pci1760_mbxrequest(dev, omb, imb);
  devpriv->CntResValue[i] = 0x0000;
 }

 omb[0] = 0xff;
 omb[2] = CMD_ResetIDICounters;
 pci1760_mbxrequest(dev, omb, imb);

 omb[0] = 0x00;
 omb[2] = CMD_EdgeIDICounters;
 pci1760_mbxrequest(dev, omb, imb);
 devpriv->IDICntEdge = 0x00;

 omb[0] = 0x00;
 omb[2] = CMD_EnableIDIFilters;
 pci1760_mbxrequest(dev, omb, imb);
 devpriv->IDIFiltersEn = 0x00;

 omb[0] = 0x00;
 omb[2] = CMD_EnableIDIPatternMatch;
 pci1760_mbxrequest(dev, omb, imb);
 devpriv->IDIPatMatchEn = 0x00;

 omb[0] = 0x00;
 omb[2] = CMD_SetIDIPatternMatch;
 pci1760_mbxrequest(dev, omb, imb);
 devpriv->IDIPatMatchValue = 0x00;

 return 0;
}
