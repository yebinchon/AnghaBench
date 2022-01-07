
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u32 ;
typedef int __u16 ;


 int I_CF_H_1 ;
 scalar_t__ IsFIROn (int ) ;
 scalar_t__ IsMIROn (int ) ;
 scalar_t__ IsSIROn (int ) ;
 int ReadReg (int ,int ) ;
 int WriteReg (int ,int ,int) ;

__attribute__((used)) static void SetBaudRate(__u16 iobase, __u32 rate)
{
 __u8 value = 11, temp;

 if (IsSIROn(iobase)) {
  switch (rate) {
  case (__u32) (2400L):
   value = 47;
   break;
  case (__u32) (9600L):
   value = 11;
   break;
  case (__u32) (19200L):
   value = 5;
   break;
  case (__u32) (38400L):
   value = 2;
   break;
  case (__u32) (57600L):
   value = 1;
   break;
  case (__u32) (115200L):
   value = 0;
   break;
  default:
   break;
  };
 } else if (IsMIROn(iobase)) {
  value = 0;
 } else if (IsFIROn(iobase)) {
  value = 0;
 }
 temp = (ReadReg(iobase, I_CF_H_1) & 0x03);
 temp |= value << 2;
 WriteReg(iobase, I_CF_H_1, temp);
}
