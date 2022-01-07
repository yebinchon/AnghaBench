
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i5k_amb_data {scalar_t__ amb_mmio; } ;


 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void amb_write_byte(struct i5k_amb_data *data, unsigned long offset,
      u8 val)
{
 iowrite8(val, data->amb_mmio + offset);
}
