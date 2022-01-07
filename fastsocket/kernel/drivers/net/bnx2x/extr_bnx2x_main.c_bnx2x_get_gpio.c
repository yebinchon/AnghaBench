
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int DP (int ,char*,int,int) ;
 int EINVAL ;
 int MISC_REGISTERS_GPIO_3 ;
 int MISC_REGISTERS_GPIO_PORT_SHIFT ;
 int MISC_REG_GPIO ;
 int NETIF_MSG_LINK ;
 int NIG_REG_PORT_SWAP ;
 int NIG_REG_STRAP_OVERRIDE ;
 int REG_RD (struct bnx2x*,int ) ;

int bnx2x_get_gpio(struct bnx2x *bp, int gpio_num, u8 port)
{

 int gpio_port = (REG_RD(bp, NIG_REG_PORT_SWAP) &&
    REG_RD(bp, NIG_REG_STRAP_OVERRIDE)) ^ port;
 int gpio_shift = gpio_num +
   (gpio_port ? MISC_REGISTERS_GPIO_PORT_SHIFT : 0);
 u32 gpio_mask = (1 << gpio_shift);
 u32 gpio_reg;
 int value;

 if (gpio_num > MISC_REGISTERS_GPIO_3) {
  BNX2X_ERR("Invalid GPIO %d\n", gpio_num);
  return -EINVAL;
 }


 gpio_reg = REG_RD(bp, MISC_REG_GPIO);


 if ((gpio_reg & gpio_mask) == gpio_mask)
  value = 1;
 else
  value = 0;

 DP(NETIF_MSG_LINK, "pin %d  value 0x%x\n", gpio_num, value);

 return value;
}
