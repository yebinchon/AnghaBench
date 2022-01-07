
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned char,unsigned int) ;

__attribute__((used)) static void WriteReg(unsigned int BaseAddr, int iRegNum, unsigned char iVal)
{
 outb(iVal, BaseAddr + iRegNum);
}
