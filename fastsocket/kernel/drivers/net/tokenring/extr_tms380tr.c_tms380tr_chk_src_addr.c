
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void tms380tr_chk_src_addr(unsigned char *frame, unsigned char *hw_addr)
{
 unsigned char SRBit;

 if((((unsigned long)frame[8]) & ~0x80) != 0)
  return;
 if((unsigned short)frame[12] != 0)
  return;

 SRBit = frame[8] & 0x80;
 memcpy(&frame[8], hw_addr, 6);
 frame[8] |= SRBit;

 return;
}
