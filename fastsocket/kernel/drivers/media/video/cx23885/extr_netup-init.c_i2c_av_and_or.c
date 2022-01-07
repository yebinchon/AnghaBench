
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;


 unsigned int i2c_av_read (struct i2c_adapter*,int ) ;
 int i2c_av_write (struct i2c_adapter*,int ,unsigned int) ;

__attribute__((used)) static void i2c_av_and_or(struct i2c_adapter *i2c, u16 reg, unsigned and_mask,
        u8 or_value)
{
 i2c_av_write(i2c, reg, (i2c_av_read(i2c, reg) & and_mask) | or_value);
}
