
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_long ;


 int MMW_FEE_ADDR_DS ;
 int MMW_FEE_ADDR_EN ;
 int MMW_FEE_CTRL_PRCLEAR ;
 int MMW_FEE_CTRL_PREN ;
 int MMW_FEE_CTRL_PRREAD ;
 int MMW_FEE_CTRL_PRWRITE ;
 int MMW_FEE_CTRL_WDS ;
 int MMW_FEE_CTRL_WREN ;
 int MMW_FEE_CTRL_WRITE ;
 int fee_wait (int ,int,int) ;
 int mdelay (int) ;
 int mmc_in (int ,int ) ;
 int mmc_out (int ,int ,int) ;
 int mmr_fee_data_h ;
 int mmr_fee_data_l ;
 int mmroff (int ,int ) ;
 int mmw_fee_addr ;
 int mmw_fee_ctrl ;
 int mmw_fee_data_h ;
 int mmw_fee_data_l ;
 int mmwoff (int ,int ) ;
 int printk (char*,int ,int ) ;

__attribute__((used)) static void
fee_write(u_long base,
   u_short o,
   u_short * b,
   int n)
{
  b += n;
  mmc_out(base, mmwoff(0, mmw_fee_addr), MMW_FEE_ADDR_EN);
  mmc_out(base, mmwoff(0, mmw_fee_ctrl), MMW_FEE_CTRL_WREN);

  fee_wait(base, 10, 100);


  mmc_out(base, mmwoff(0, mmw_fee_addr), o + n - 1);


  while(n-- > 0)
    {

      mmc_out(base, mmwoff(0, mmw_fee_data_h), (*--b) >> 8);
      mmc_out(base, mmwoff(0, mmw_fee_data_l), *b & 0xFF);


      mmc_out(base, mmwoff(0, mmw_fee_ctrl), MMW_FEE_CTRL_WRITE);


      mdelay(10);
      fee_wait(base, 10, 100);
    }


  mmc_out(base, mmwoff(0, mmw_fee_addr), MMW_FEE_ADDR_DS);
  mmc_out(base, mmwoff(0, mmw_fee_ctrl), MMW_FEE_CTRL_WDS);

  fee_wait(base, 10, 100);
}
