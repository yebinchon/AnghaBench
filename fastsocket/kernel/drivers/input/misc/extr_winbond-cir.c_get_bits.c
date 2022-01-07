
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wbcir_data {int irdata_count; int irdata_off; int irdata_error; int irdata; } ;


 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static u16
get_bits(struct wbcir_data *data, int count)
{
 u16 val = 0x0;

 if (data->irdata_count - data->irdata_off < count) {
  data->irdata_error = 1;
  return 0x0;
 }

 while (count > 0) {
  val <<= 1;
  if (test_bit(data->irdata_off, data->irdata))
   val |= 0x1;
  count--;
  data->irdata_off++;
 }

 return val;
}
