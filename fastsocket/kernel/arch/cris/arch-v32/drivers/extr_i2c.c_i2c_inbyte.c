
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_HIGH_TIME ;
 int CLOCK_LOW_TIME ;
 int I2C_CLOCK_HIGH ;
 int I2C_CLOCK_LOW ;
 int i2c_clk (int ) ;
 int i2c_delay (int) ;
 int i2c_dir_in () ;
 int i2c_disable () ;
 int i2c_enable () ;
 unsigned char i2c_getbit () ;

unsigned char
i2c_inbyte(void)
{
 unsigned char aBitByte = 0;
 int i;


 i2c_disable();
 i2c_dir_in();
 i2c_delay(CLOCK_HIGH_TIME/2);


 aBitByte |= i2c_getbit();


 i2c_enable();
 i2c_delay(CLOCK_LOW_TIME/2);

 for (i = 1; i < 8; i++) {
  aBitByte <<= 1;

  i2c_clk(I2C_CLOCK_HIGH);
  i2c_delay(CLOCK_HIGH_TIME);
  i2c_clk(I2C_CLOCK_LOW);
  i2c_delay(CLOCK_LOW_TIME);


  i2c_disable();
  i2c_dir_in();
  i2c_delay(CLOCK_HIGH_TIME/2);


  aBitByte |= i2c_getbit();


  i2c_enable();
  i2c_delay(CLOCK_LOW_TIME/2);
 }
 i2c_clk(I2C_CLOCK_HIGH);
 i2c_delay(CLOCK_HIGH_TIME);





 i2c_clk(I2C_CLOCK_LOW);
 return aBitByte;
}
