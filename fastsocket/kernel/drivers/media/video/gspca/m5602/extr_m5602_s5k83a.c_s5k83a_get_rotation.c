
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int M5602_XB_GPIO_DAT ;
 int S5K83A_GPIO_ROTATION_MASK ;
 int m5602_read_bridge (struct sd*,int ,int*) ;

__attribute__((used)) static int s5k83a_get_rotation(struct sd *sd, u8 *reg_data)
{
 int err = m5602_read_bridge(sd, M5602_XB_GPIO_DAT, reg_data);
 *reg_data = (*reg_data & S5K83A_GPIO_ROTATION_MASK) ? 0 : 1;
 return err;
}
