
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {int port; int bp; } ;
struct bnx2x_phy {int dummy; } ;


 int MISC_REGISTERS_GPIO_1 ;
 int MISC_REGISTERS_GPIO_2 ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 int bnx2x_set_gpio (int ,int ,int ,int ) ;

__attribute__((used)) static void bnx2x_7101_hw_reset(struct bnx2x_phy *phy,
    struct link_params *params) {

 bnx2x_set_gpio(params->bp, MISC_REGISTERS_GPIO_2,
         MISC_REGISTERS_GPIO_OUTPUT_LOW, params->port);

 bnx2x_set_gpio(params->bp, MISC_REGISTERS_GPIO_1,
         MISC_REGISTERS_GPIO_OUTPUT_LOW, params->port);
}
