
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wbcir_data {scalar_t__ irdata_error; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,...) ;
 int get_bits (struct wbcir_data*,int) ;
 int wbcir_keydown (struct wbcir_data*,int,int) ;
 int wbcir_rc6cells_to_byte (struct wbcir_data*) ;

__attribute__((used)) static void
wbcir_parse_rc6(struct device *dev, struct wbcir_data *data)
{
 u8 mode;
 u8 toggle;
 u16 customer = 0x0;
 u8 address;
 u8 command;
 u32 scancode;


 while (get_bits(data, 1) && !data->irdata_error)
                  ;


 if (get_bits(data, 1)) {
  dev_dbg(dev, "RC6 - Invalid leader space\n");
  return;
 }


 if (get_bits(data, 2) != 0x02) {
  dev_dbg(dev, "RC6 - Invalid start bit\n");
  return;
 }


 mode = get_bits(data, 6);
 switch (mode) {
 case 0x15:
  mode = 0;
  break;
 case 0x29:
  mode = 6;
  break;
 default:
  dev_dbg(dev, "RC6 - Invalid mode\n");
  return;
 }


 toggle = get_bits(data, 4);
 switch (toggle) {
 case 0x03:
  toggle = 0;
  break;
 case 0x0C:
  toggle = 1;
  break;
 default:
  dev_dbg(dev, "RC6 - Toggle bit error\n");
  break;
 }


 if (mode == 6) {
  if (toggle != 0) {
   dev_dbg(dev, "RC6B - Not Supported\n");
   return;
  }

  customer = wbcir_rc6cells_to_byte(data);

  if (customer & 0x80) {

   customer <<= 8;
   customer |= wbcir_rc6cells_to_byte(data);
  }
 }


 address = wbcir_rc6cells_to_byte(data);
 if (mode == 6) {
  toggle = address >> 7;
  address &= 0x7F;
 }


 command = wbcir_rc6cells_to_byte(data);


 scancode = command;
 scancode |= address << 8;
 scancode |= customer << 16;


 if (data->irdata_error) {
  dev_dbg(dev, "RC6 - Cell error(s)\n");
  return;
 }

 dev_dbg(dev, "IR-RC6 ad 0x%02X cm 0x%02X cu 0x%04X "
  "toggle %u mode %u scan 0x%08X\n",
  address,
  command,
  customer,
  (unsigned int)toggle,
  (unsigned int)mode,
  scancode);

 wbcir_keydown(data, scancode, toggle);
}
