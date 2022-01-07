
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wbcir_data {int last_scancode; int last_toggle; scalar_t__ irdata_error; int keypressed; } ;
struct device {int dummy; } ;


 int bitrev8 (scalar_t__) ;
 int dev_dbg (struct device*,char*,...) ;
 scalar_t__ get_bits (struct wbcir_data*,int) ;
 int wbcir_keydown (struct wbcir_data*,int,int) ;

__attribute__((used)) static void
wbcir_parse_nec(struct device *dev, struct wbcir_data *data)
{
 u8 address1;
 u8 address2;
 u8 command1;
 u8 command2;
 u16 address;
 u32 scancode;


 while (get_bits(data, 1) && !data->irdata_error)
                  ;


 if (get_bits(data, 4)) {
  dev_dbg(dev, "NEC - Invalid leader space\n");
  return;
 }


 if (get_bits(data, 1)) {
  if (!data->keypressed) {
   dev_dbg(dev, "NEC - Stray repeat message\n");
   return;
  }

  dev_dbg(dev, "IR-NEC repeat s %u\n",
   (unsigned int)data->last_scancode);

  wbcir_keydown(data, data->last_scancode, data->last_toggle);
  return;
 }


 if (get_bits(data, 3)) {
  dev_dbg(dev, "NEC - Invalid leader space\n");
  return;
 }

 address1 = bitrev8(get_bits(data, 8));
 address2 = bitrev8(get_bits(data, 8));
 command1 = bitrev8(get_bits(data, 8));
 command2 = bitrev8(get_bits(data, 8));


 if (data->irdata_error) {
  dev_dbg(dev, "NEC - Invalid message\n");
  return;
 }


 if (command1 != ~command2) {
  dev_dbg(dev, "NEC - Command bytes mismatch\n");
  return;
 }


 address = address1;
 if (address1 != ~address2)
  address |= address2 << 8;

 scancode = address << 8 | command1;

 dev_dbg(dev, "IR-NEC ad %u cm %u s %u\n",
  (unsigned int)address,
  (unsigned int)command1,
  (unsigned int)scancode);

 wbcir_keydown(data, scancode, !data->last_toggle);
}
