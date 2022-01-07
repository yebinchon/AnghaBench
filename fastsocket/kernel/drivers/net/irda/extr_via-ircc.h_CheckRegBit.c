
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 unsigned char EndAddr ;
 int GetBit (int,unsigned char) ;
 int ReadReg (unsigned int,unsigned char) ;
 unsigned char StartAddr ;

__attribute__((used)) static __u8 CheckRegBit(unsigned int BaseAddr, unsigned char RegNum,
   unsigned char BitPos)
{
 __u8 temp;

 if (BitPos > 7)
  return 0xff;
 if ((RegNum < StartAddr) || (RegNum > EndAddr)) {

 }
 temp = ReadReg(BaseAddr, RegNum);
 return GetBit(temp, BitPos);
}
