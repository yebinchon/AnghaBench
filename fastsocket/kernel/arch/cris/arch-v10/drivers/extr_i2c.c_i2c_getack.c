
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_HIGH_TIME ;
 int CLOCK_LOW_TIME ;
 int I2C_CLOCK_HIGH ;
 int I2C_CLOCK_LOW ;
 int I2C_DATA_HIGH ;
 int I2C_DATA_LOW ;
 int i2c_clk (int) ;
 int i2c_data (int) ;
 int i2c_delay (int) ;
 int i2c_dir_in () ;
 int i2c_dir_out () ;
 int i2c_disable () ;
 int i2c_enable () ;
 scalar_t__ i2c_getbit () ;

int
i2c_getack(void)
{
 int ack = 1;



 i2c_dir_out();




 i2c_data(I2C_DATA_HIGH);



 i2c_dir_in();
 i2c_delay(CLOCK_HIGH_TIME/4);



 i2c_clk(I2C_CLOCK_HIGH);




 i2c_clk(1);
 i2c_data(1);



 i2c_data(1);
 i2c_disable();
 i2c_dir_in();



 i2c_delay(CLOCK_HIGH_TIME/2);



 if(i2c_getbit())
  ack = 0;
 i2c_delay(CLOCK_HIGH_TIME/2);
 if(!ack){
  if(!i2c_getbit())
   ack = 1;
  i2c_delay(CLOCK_HIGH_TIME/2);
 }






 i2c_data(I2C_DATA_LOW);




 i2c_enable();
 i2c_dir_out();
 i2c_clk(I2C_CLOCK_LOW);
 i2c_delay(CLOCK_HIGH_TIME/4);



 i2c_dir_out();



 i2c_data(I2C_DATA_HIGH);
 i2c_delay(CLOCK_LOW_TIME/2);
 return ack;
}
