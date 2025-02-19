
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 unsigned char CMD_ClearIMB2 ;
 int EINVAL ;
 scalar_t__ IMB2 ;
 int OMBCMD_RETRY ;
 int comedi_error (struct comedi_device*,char*) ;
 unsigned char inb (scalar_t__) ;
 int pci1760_clear_imb2 (struct comedi_device*) ;
 int pci1760_unchecked_mbxrequest (struct comedi_device*,unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static int pci1760_mbxrequest(struct comedi_device *dev,
         unsigned char *omb, unsigned char *imb)
{
 if (omb[2] == CMD_ClearIMB2) {
  comedi_error(dev,
        "bug! this function should not be used for CMD_ClearIMB2 command");
  return -EINVAL;
 }
 if (inb(dev->iobase + IMB2) == omb[2]) {
  int retval;
  retval = pci1760_clear_imb2(dev);
  if (retval < 0)
   return retval;
 }
 return pci1760_unchecked_mbxrequest(dev, omb, imb, OMBCMD_RETRY);
}
