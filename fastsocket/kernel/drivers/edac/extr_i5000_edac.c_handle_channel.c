
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i5000_pvt {int dummy; } ;
struct i5000_dimm_info {int megabytes; int dual_rank; } ;


 scalar_t__ MTR_DIMMS_PRESENT (int) ;
 scalar_t__ MTR_DIMM_COLS_ADDR_BITS (int) ;
 int MTR_DIMM_RANK (int) ;
 scalar_t__ MTR_DIMM_ROWS_ADDR_BITS (int) ;
 int MTR_DRAM_BANKS_ADDR_BITS (int) ;
 int determine_amb_present_reg (struct i5000_pvt*,int) ;
 int determine_mtr (struct i5000_pvt*,int,int) ;

__attribute__((used)) static void handle_channel(struct i5000_pvt *pvt, int csrow, int channel,
   struct i5000_dimm_info *dinfo)
{
 int mtr;
 int amb_present_reg;
 int addrBits;

 mtr = determine_mtr(pvt, csrow, channel);
 if (MTR_DIMMS_PRESENT(mtr)) {
  amb_present_reg = determine_amb_present_reg(pvt, channel);


  if (amb_present_reg & (1 << (csrow >> 1))) {
   dinfo->dual_rank = MTR_DIMM_RANK(mtr);

   if (!((dinfo->dual_rank == 0) &&
    ((csrow & 0x1) == 0x1))) {


    addrBits = MTR_DRAM_BANKS_ADDR_BITS(mtr);

    addrBits += MTR_DIMM_ROWS_ADDR_BITS(mtr);

    addrBits += MTR_DIMM_COLS_ADDR_BITS(mtr);

    addrBits += 6;
    addrBits -= 20;
    addrBits -= 3;

    dinfo->megabytes = 1 << addrBits;
   }
  }
 }
}
