
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83627ehf_data {int* fan_div; int has_fan; } ;


 int W83627EHF_REG_DIODE ;
 int W83627EHF_REG_FANDIV1 ;
 int W83627EHF_REG_FANDIV2 ;
 int W83627EHF_REG_SMI_OVT ;
 int W83627EHF_REG_VBAT ;
 int w83627ehf_read_value (struct w83627ehf_data*,int ) ;
 int w83627ehf_write_value (struct w83627ehf_data*,int ,int) ;

__attribute__((used)) static void w83627ehf_write_fan_div(struct w83627ehf_data *data, int nr)
{
 u8 reg;

 switch (nr) {
 case 0:
  reg = (w83627ehf_read_value(data, W83627EHF_REG_FANDIV1) & 0xcf)
      | ((data->fan_div[0] & 0x03) << 4);

  reg |= (data->has_fan & (1 << 4)) ? 1 : 0;
  w83627ehf_write_value(data, W83627EHF_REG_FANDIV1, reg);
  reg = (w83627ehf_read_value(data, W83627EHF_REG_VBAT) & 0xdf)
      | ((data->fan_div[0] & 0x04) << 3);
  w83627ehf_write_value(data, W83627EHF_REG_VBAT, reg);
  break;
 case 1:
  reg = (w83627ehf_read_value(data, W83627EHF_REG_FANDIV1) & 0x3f)
      | ((data->fan_div[1] & 0x03) << 6);

  reg |= (data->has_fan & (1 << 4)) ? 1 : 0;
  w83627ehf_write_value(data, W83627EHF_REG_FANDIV1, reg);
  reg = (w83627ehf_read_value(data, W83627EHF_REG_VBAT) & 0xbf)
      | ((data->fan_div[1] & 0x04) << 4);
  w83627ehf_write_value(data, W83627EHF_REG_VBAT, reg);
  break;
 case 2:
  reg = (w83627ehf_read_value(data, W83627EHF_REG_FANDIV2) & 0x3f)
      | ((data->fan_div[2] & 0x03) << 6);
  w83627ehf_write_value(data, W83627EHF_REG_FANDIV2, reg);
  reg = (w83627ehf_read_value(data, W83627EHF_REG_VBAT) & 0x7f)
      | ((data->fan_div[2] & 0x04) << 5);
  w83627ehf_write_value(data, W83627EHF_REG_VBAT, reg);
  break;
 case 3:
  reg = (w83627ehf_read_value(data, W83627EHF_REG_DIODE) & 0xfc)
      | (data->fan_div[3] & 0x03);
  w83627ehf_write_value(data, W83627EHF_REG_DIODE, reg);
  reg = (w83627ehf_read_value(data, W83627EHF_REG_SMI_OVT) & 0x7f)
      | ((data->fan_div[3] & 0x04) << 5);
  w83627ehf_write_value(data, W83627EHF_REG_SMI_OVT, reg);
  break;
 case 4:
  reg = (w83627ehf_read_value(data, W83627EHF_REG_DIODE) & 0x73)
      | ((data->fan_div[4] & 0x03) << 2)
      | ((data->fan_div[4] & 0x04) << 5);
  w83627ehf_write_value(data, W83627EHF_REG_DIODE, reg);
  break;
 }
}
