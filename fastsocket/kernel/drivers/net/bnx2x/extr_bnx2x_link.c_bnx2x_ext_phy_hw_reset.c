
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 int MISC_REGISTERS_GPIO_1 ;
 int MISC_REGISTERS_GPIO_OUTPUT_HIGH ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 int bnx2x_set_gpio (struct bnx2x*,int ,int ,int ) ;
 int usleep_range (int,int) ;

void bnx2x_ext_phy_hw_reset(struct bnx2x *bp, u8 port)
{
 bnx2x_set_gpio(bp, MISC_REGISTERS_GPIO_1,
         MISC_REGISTERS_GPIO_OUTPUT_LOW, port);
 usleep_range(1000, 2000);
 bnx2x_set_gpio(bp, MISC_REGISTERS_GPIO_1,
         MISC_REGISTERS_GPIO_OUTPUT_HIGH, port);
}
