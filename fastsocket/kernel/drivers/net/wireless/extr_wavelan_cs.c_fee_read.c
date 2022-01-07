
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_long ;


 int MMW_FEE_CTRL_READ ;
 int fee_wait (int ,int,int) ;
 int mmc_in (int ,int ) ;
 int mmc_out (int ,int ,int) ;
 int mmr_fee_data_h ;
 int mmr_fee_data_l ;
 int mmroff (int ,int ) ;
 int mmw_fee_addr ;
 int mmw_fee_ctrl ;
 int mmwoff (int ,int ) ;

__attribute__((used)) static void
fee_read(u_long base,
  u_short o,
  u_short * b,
  int n)
{
  b += n;


  mmc_out(base, mmwoff(0, mmw_fee_addr), o + n - 1);


  while(n-- > 0)
    {

      mmc_out(base, mmwoff(0, mmw_fee_ctrl), MMW_FEE_CTRL_READ);


      fee_wait(base, 10, 100);


      *--b = ((mmc_in(base, mmroff(0, mmr_fee_data_h)) << 8) |
       mmc_in(base, mmroff(0, mmr_fee_data_l)));
    }
}
