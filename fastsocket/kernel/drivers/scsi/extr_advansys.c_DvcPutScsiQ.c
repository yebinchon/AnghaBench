
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int uchar ;
typedef scalar_t__ PortAddr ;


 int ASC_DBG_PRT_HEX (int,char*,int*,int) ;
 int AscSetChipLramAddr (scalar_t__,int) ;
 scalar_t__ IOP_RAM_DATA ;
 int outpw (scalar_t__,int) ;

__attribute__((used)) static void
DvcPutScsiQ(PortAddr iop_base, ushort s_addr, uchar *outbuf, int words)
{
 int i;

 ASC_DBG_PRT_HEX(2, "DvcPutScsiQ", outbuf, 2 * words);
 AscSetChipLramAddr(iop_base, s_addr);
 for (i = 0; i < 2 * words; i += 2) {
  if (i == 4 || i == 20) {
   continue;
  }
  outpw(iop_base + IOP_RAM_DATA,
        ((ushort)outbuf[i + 1] << 8) | outbuf[i]);
 }
}
