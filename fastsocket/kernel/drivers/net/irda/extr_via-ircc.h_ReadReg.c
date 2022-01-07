
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 scalar_t__ inb (unsigned int) ;

__attribute__((used)) static __u8 ReadReg(unsigned int BaseAddr, int iRegNum)
{
 return ((__u8) inb(BaseAddr + iRegNum));
}
