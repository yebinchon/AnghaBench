
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int ) ;
 int MISC_REGISTERS_GPIO_OUTPUT_HIGH ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 int NETIF_MSG_LINK ;
 int bnx2x_84833_get_reset_gpios (struct bnx2x*,int *,int ) ;
 int bnx2x_set_mult_gpio (struct bnx2x*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int bnx2x_84833_common_init_phy(struct bnx2x *bp,
      u32 shmem_base_path[],
      u32 shmem2_base_path[],
      u8 phy_index,
      u32 chip_id)
{
 u8 reset_gpios;
 reset_gpios = bnx2x_84833_get_reset_gpios(bp, shmem_base_path, chip_id);
 bnx2x_set_mult_gpio(bp, reset_gpios, MISC_REGISTERS_GPIO_OUTPUT_LOW);
 udelay(10);
 bnx2x_set_mult_gpio(bp, reset_gpios, MISC_REGISTERS_GPIO_OUTPUT_HIGH);
 DP(NETIF_MSG_LINK, "84833 reset pulse on pin values 0x%x\n",
  reset_gpios);
 return 0;
}
