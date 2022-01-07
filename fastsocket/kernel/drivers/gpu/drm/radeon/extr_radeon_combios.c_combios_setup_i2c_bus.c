
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct radeon_i2c_bus_rec {int mask_clk_reg; int mask_data_reg; int a_clk_reg; int a_data_reg; int en_clk_reg; int en_data_reg; int y_clk_reg; int y_data_reg; int mask_clk_mask; int mask_data_mask; int a_clk_mask; int a_data_mask; int en_clk_mask; int en_data_mask; int y_clk_mask; int y_data_mask; int hw_capable; int mm_i2c; int i2c_id; int valid; int hpd; } ;
struct radeon_device {int family; } ;
typedef enum radeon_combios_ddc { ____Placeholder_radeon_combios_ddc } radeon_combios_ddc ;
 void* RADEON_GPIOPAD_A ;
 void* RADEON_GPIOPAD_EN ;
 int RADEON_GPIOPAD_MASK ;
 void* RADEON_GPIOPAD_Y ;
 int RADEON_GPIO_A_0 ;
 int RADEON_GPIO_A_1 ;


 int RADEON_GPIO_EN_0 ;
 int RADEON_GPIO_EN_1 ;
 int RADEON_GPIO_MASK_0 ;
 int RADEON_GPIO_MASK_1 ;


 int RADEON_GPIO_Y_0 ;
 int RADEON_GPIO_Y_1 ;
 int RADEON_HPD_NONE ;
 void* RADEON_MDGPIO_A ;
 void* RADEON_MDGPIO_EN ;
 int RADEON_MDGPIO_MASK ;
 void* RADEON_MDGPIO_Y ;

__attribute__((used)) static struct radeon_i2c_bus_rec combios_setup_i2c_bus(struct radeon_device *rdev,
             enum radeon_combios_ddc ddc,
             u32 clk_mask,
             u32 data_mask)
{
 struct radeon_i2c_bus_rec i2c;
 int ddc_line = 0;
 switch (ddc) {
 case 133:
 default:
  ddc_line = 0;
  break;
 case 137:
  ddc_line = 130;
  break;
 case 132:
  ddc_line = 128;
  break;
 case 135:
  ddc_line = RADEON_GPIOPAD_MASK;
  break;
 case 136:
  ddc_line = RADEON_MDGPIO_MASK;
  break;
 case 134:
  if (rdev->family == 147 ||
      rdev->family == 146 ||
      rdev->family == 145)
   ddc_line = RADEON_GPIOPAD_MASK;
  else if (rdev->family == 151 ||
    rdev->family == 150) {
   ddc_line = 130;
   ddc = 137;
  } else
   ddc_line = 129;
  break;
 case 138:
  if (rdev->family == 152 ||
      rdev->family == 151 ||
      rdev->family == 150) {
   ddc_line = 130;
   ddc = 137;
  } else if (rdev->family == 147 ||
      rdev->family == 146 ||
      rdev->family == 145)
   ddc_line = 129;
  else if (rdev->family >= 140) {
   ddc_line = 129;
   ddc = 134;
  } else
   ddc_line = 131;
  break;
 }

 if (ddc_line == RADEON_GPIOPAD_MASK) {
  i2c.mask_clk_reg = RADEON_GPIOPAD_MASK;
  i2c.mask_data_reg = RADEON_GPIOPAD_MASK;
  i2c.a_clk_reg = RADEON_GPIOPAD_A;
  i2c.a_data_reg = RADEON_GPIOPAD_A;
  i2c.en_clk_reg = RADEON_GPIOPAD_EN;
  i2c.en_data_reg = RADEON_GPIOPAD_EN;
  i2c.y_clk_reg = RADEON_GPIOPAD_Y;
  i2c.y_data_reg = RADEON_GPIOPAD_Y;
 } else if (ddc_line == RADEON_MDGPIO_MASK) {
  i2c.mask_clk_reg = RADEON_MDGPIO_MASK;
  i2c.mask_data_reg = RADEON_MDGPIO_MASK;
  i2c.a_clk_reg = RADEON_MDGPIO_A;
  i2c.a_data_reg = RADEON_MDGPIO_A;
  i2c.en_clk_reg = RADEON_MDGPIO_EN;
  i2c.en_data_reg = RADEON_MDGPIO_EN;
  i2c.y_clk_reg = RADEON_MDGPIO_Y;
  i2c.y_data_reg = RADEON_MDGPIO_Y;
 } else {
  i2c.mask_clk_reg = ddc_line;
  i2c.mask_data_reg = ddc_line;
  i2c.a_clk_reg = ddc_line;
  i2c.a_data_reg = ddc_line;
  i2c.en_clk_reg = ddc_line;
  i2c.en_data_reg = ddc_line;
  i2c.y_clk_reg = ddc_line;
  i2c.y_data_reg = ddc_line;
 }

 if (clk_mask && data_mask) {

  i2c.mask_clk_mask = clk_mask;
  i2c.mask_data_mask = data_mask;
  i2c.a_clk_mask = clk_mask;
  i2c.a_data_mask = data_mask;
  i2c.en_clk_mask = clk_mask;
  i2c.en_data_mask = data_mask;
  i2c.y_clk_mask = clk_mask;
  i2c.y_data_mask = data_mask;
 } else if ((ddc_line == RADEON_GPIOPAD_MASK) ||
     (ddc_line == RADEON_MDGPIO_MASK)) {

  i2c.mask_clk_mask = (0x20 << 8);
  i2c.mask_data_mask = 0x80;
  i2c.a_clk_mask = (0x20 << 8);
  i2c.a_data_mask = 0x80;
  i2c.en_clk_mask = (0x20 << 8);
  i2c.en_data_mask = 0x80;
  i2c.y_clk_mask = (0x20 << 8);
  i2c.y_data_mask = 0x80;
 } else {

  i2c.mask_clk_mask = RADEON_GPIO_MASK_1;
  i2c.mask_data_mask = RADEON_GPIO_MASK_0;
  i2c.a_clk_mask = RADEON_GPIO_A_1;
  i2c.a_data_mask = RADEON_GPIO_A_0;
  i2c.en_clk_mask = RADEON_GPIO_EN_1;
  i2c.en_data_mask = RADEON_GPIO_EN_0;
  i2c.y_clk_mask = RADEON_GPIO_Y_1;
  i2c.y_data_mask = RADEON_GPIO_Y_0;
 }

 switch (rdev->family) {
 case 153:
 case 144:
 case 149:
 case 143:
 case 148:
 case 147:
  switch (ddc_line) {
  case 130:
   i2c.hw_capable = 1;
   break;
  default:
   i2c.hw_capable = 0;
   break;
  }
  break;
 case 152:
  switch (ddc_line) {
  case 130:
  case 129:
   i2c.hw_capable = 1;
   break;
  default:
   i2c.hw_capable = 0;
   break;
  }
  break;
 case 142:
 case 141:
  switch (ddc_line) {
  case 128:
  case 130:
  case 131:
   i2c.hw_capable = 1;
   break;
  default:
   i2c.hw_capable = 0;
   break;
  }
  break;
 case 151:
 case 150:
  switch (ddc_line) {
  case 128:
  case 130:
   i2c.hw_capable = 1;
   break;
  default:
   i2c.hw_capable = 0;
   break;
  }
  break;
 case 140:
 case 139:
 case 146:
 case 145:
  switch (ddc_line) {
  case 128:
  case 130:
   i2c.hw_capable = 1;
   break;
  case 129:



   i2c.hw_capable = 0;
   break;
  default:
   i2c.hw_capable = 0;
   break;
  }
  break;
 default:
  i2c.hw_capable = 0;
  break;
 }
 i2c.mm_i2c = 0;

 i2c.i2c_id = ddc;
 i2c.hpd = RADEON_HPD_NONE;

 if (ddc_line)
  i2c.valid = 1;
 else
  i2c.valid = 0;

 return i2c;
}
