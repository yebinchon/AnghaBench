
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_HIGH_TIME ;
 int CLOCK_LOW_TIME ;
 int I2C_CLOCK_HIGH ;
 int I2C_CLOCK_LOW ;
 int I2C_DATA_HIGH ;
 int i2c_clk (int ) ;
 int i2c_data (int ) ;
 int i2c_delay (int) ;
 int i2c_dir_in () ;
 int i2c_dir_out () ;

void
i2c_sendnack(void)
{



 i2c_delay(CLOCK_LOW_TIME);
 i2c_dir_out();



 i2c_data(I2C_DATA_HIGH);



 i2c_delay(CLOCK_HIGH_TIME/6);
 i2c_clk(I2C_CLOCK_HIGH);
 i2c_delay(CLOCK_HIGH_TIME);
 i2c_clk(I2C_CLOCK_LOW);
 i2c_delay(CLOCK_LOW_TIME);

 i2c_dir_in();
}
