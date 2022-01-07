
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 unsigned char EndAddr ;
 int ReadReg (unsigned int,unsigned char) ;
 int ResetBit (int ,unsigned char) ;
 int SetBit (int ,unsigned char) ;
 unsigned char StartAddr ;
 int WriteReg (unsigned int,unsigned char,int ) ;

__attribute__((used)) static int WriteRegBit(unsigned int BaseAddr, unsigned char RegNum,
  unsigned char BitPos, unsigned char value)
{
 __u8 Rtemp, Wtemp;

 if (BitPos > 7) {
  return -1;
 }
 if ((RegNum < StartAddr) || (RegNum > EndAddr))
  return -1;
 Rtemp = ReadReg(BaseAddr, RegNum);
 if (value == 0)
  Wtemp = ResetBit(Rtemp, BitPos);
 else {
  if (value == 1)
   Wtemp = SetBit(Rtemp, BitPos);
  else
   return -1;
 }
 WriteReg(BaseAddr, RegNum, Wtemp);
 return 0;
}
