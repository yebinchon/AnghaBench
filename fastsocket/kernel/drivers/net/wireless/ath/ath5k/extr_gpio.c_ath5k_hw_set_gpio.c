
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int dummy; } ;


 int AR5K_GPIODO ;
 int AR5K_NUM_GPIO ;
 int EINVAL ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

int
ath5k_hw_set_gpio(struct ath5k_hw *ah, u32 gpio, u32 val)
{
 u32 data;

 if (gpio >= AR5K_NUM_GPIO)
  return -EINVAL;


 data = ath5k_hw_reg_read(ah, AR5K_GPIODO);

 data &= ~(1 << gpio);
 data |= (val & 1) << gpio;

 ath5k_hw_reg_write(ah, data, AR5K_GPIODO);

 return 0;
}
