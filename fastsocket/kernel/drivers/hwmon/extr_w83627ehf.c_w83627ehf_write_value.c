
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83627ehf_data {int lock; scalar_t__ addr; } ;


 scalar_t__ ADDR_REG_OFFSET ;
 scalar_t__ DATA_REG_OFFSET ;
 int is_word_sized (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (int,scalar_t__) ;
 int w83627ehf_reset_bank (struct w83627ehf_data*,int) ;
 int w83627ehf_set_bank (struct w83627ehf_data*,int) ;

__attribute__((used)) static int w83627ehf_write_value(struct w83627ehf_data *data, u16 reg, u16 value)
{
 int word_sized = is_word_sized(reg);

 mutex_lock(&data->lock);

 w83627ehf_set_bank(data, reg);
 outb_p(reg & 0xff, data->addr + ADDR_REG_OFFSET);
 if (word_sized) {
  outb_p(value >> 8, data->addr + DATA_REG_OFFSET);
  outb_p((reg & 0xff) + 1,
         data->addr + ADDR_REG_OFFSET);
 }
 outb_p(value & 0xff, data->addr + DATA_REG_OFFSET);
 w83627ehf_reset_bank(data, reg);

 mutex_unlock(&data->lock);
 return 0;
}
