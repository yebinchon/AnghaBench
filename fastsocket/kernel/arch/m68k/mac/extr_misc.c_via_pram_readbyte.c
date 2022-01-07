
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int VIA1B_vRTCClk ;
 int VIA1B_vRTCData ;
 size_t vBufB ;
 size_t vDirB ;
 int* via1 ;

__attribute__((used)) static __u8 via_pram_readbyte(void)
{
 int i,reg;
 __u8 data;

 reg = via1[vBufB] & ~VIA1B_vRTCClk;



 via1[vDirB] &= ~VIA1B_vRTCData;



 data = 0;
 for (i = 0 ; i < 8 ; i++) {
  via1[vBufB] = reg;
  via1[vBufB] = reg | VIA1B_vRTCClk;
  data = (data << 1) | (via1[vBufB] & VIA1B_vRTCData);
 }



 via1[vDirB] |= VIA1B_vRTCData;

 return data;
}
