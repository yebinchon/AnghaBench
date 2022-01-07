
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {int irdata_count; int irdata_error; int irdata; } ;


 int __set_bit (int,int ) ;

__attribute__((used)) static void
add_irdata_bit(struct wbcir_data *data, int set)
{
 if (data->irdata_count >= sizeof(data->irdata) * 8) {
  data->irdata_error = 1;
  return;
 }

 if (set)
  __set_bit(data->irdata_count, data->irdata);
 data->irdata_count++;
}
