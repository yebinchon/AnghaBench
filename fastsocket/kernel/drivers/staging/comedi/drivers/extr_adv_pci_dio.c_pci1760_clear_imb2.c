
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int CMD_ClearIMB2 ;
 scalar_t__ IMB2 ;
 int OMBCMD_RETRY ;
 int inb (scalar_t__) ;
 int pci1760_unchecked_mbxrequest (struct comedi_device*,unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static int pci1760_clear_imb2(struct comedi_device *dev)
{
 unsigned char omb[4] = { 0x0, 0x0, CMD_ClearIMB2, 0x0 };
 unsigned char imb[4];

 if (inb(dev->iobase + IMB2) == CMD_ClearIMB2)
  return 0;
 return pci1760_unchecked_mbxrequest(dev, omb, imb, OMBCMD_RETRY);
}
