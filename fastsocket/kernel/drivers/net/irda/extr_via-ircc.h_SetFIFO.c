
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int WriteRegBit (int,int,int,int) ;

__attribute__((used)) static void SetFIFO(__u16 iobase, __u16 value)
{
 switch (value) {
 case 128:
  WriteRegBit(iobase, 0x11, 0, 0);
  WriteRegBit(iobase, 0x11, 7, 1);
  break;
 case 64:
  WriteRegBit(iobase, 0x11, 0, 0);
  WriteRegBit(iobase, 0x11, 7, 0);
  break;
 case 32:
  WriteRegBit(iobase, 0x11, 0, 1);
  WriteRegBit(iobase, 0x11, 7, 0);
  break;
 default:
  WriteRegBit(iobase, 0x11, 0, 0);
  WriteRegBit(iobase, 0x11, 7, 0);
 }

}
