
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wbcir_data {scalar_t__ irdata_error; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,...) ;
 int get_bits (struct wbcir_data*,int) ;
 int wbcir_get_rc5bits (struct wbcir_data*,int) ;
 int wbcir_keydown (struct wbcir_data*,int,int) ;

__attribute__((used)) static void
wbcir_parse_rc5(struct device *dev, struct wbcir_data *data)
{
 u8 toggle;
 u8 address;
 u8 command;
 u32 scancode;


 if (!get_bits(data, 1)) {
  dev_dbg(dev, "RC5 - Invalid start bit\n");
  return;
 }


 if (!wbcir_get_rc5bits(data, 1))
  command = 0x40;
 else
  command = 0x00;

 toggle = wbcir_get_rc5bits(data, 1);
 address = wbcir_get_rc5bits(data, 5);
 command |= wbcir_get_rc5bits(data, 6);
 scancode = address << 7 | command;


 if (data->irdata_error) {
  dev_dbg(dev, "RC5 - Invalid message\n");
  return;
 }

 dev_dbg(dev, "IR-RC5 ad %u cm %u t %u s %u\n",
  (unsigned int)address,
  (unsigned int)command,
  (unsigned int)toggle,
  (unsigned int)scancode);

 wbcir_keydown(data, scancode, toggle);
}
