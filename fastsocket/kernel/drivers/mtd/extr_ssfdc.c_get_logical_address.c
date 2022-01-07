
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ARRAY_SIZE (int*) ;
 int DEBUG (int ,char*,int,...) ;
 int MTD_DEBUG_LEVEL0 ;
 int MTD_DEBUG_LEVEL3 ;
 int get_parity (int,int) ;

__attribute__((used)) static int get_logical_address(uint8_t *oob_buf)
{
 int block_address, parity;
 int offset[2] = {6, 11};
 int j;
 int ok = 0;






 for (j = 0; j < ARRAY_SIZE(offset); j++) {
  block_address = ((int)oob_buf[offset[j]] << 8) |
   oob_buf[offset[j]+1];


  if ((block_address & ~0x7FF) == 0x1000) {
   parity = block_address & 0x01;
   block_address &= 0x7FF;
   block_address >>= 1;

   if (get_parity(block_address, 10) != parity) {
    DEBUG(MTD_DEBUG_LEVEL0,
     "SSFDC_RO: logical address field%d"
     "parity error(0x%04X)\n", j+1,
     block_address);
   } else {
    ok = 1;
    break;
   }
  }
 }

 if (!ok)
  block_address = -2;

 DEBUG(MTD_DEBUG_LEVEL3, "SSFDC_RO: get_logical_address() %d\n",
  block_address);

 return block_address;
}
