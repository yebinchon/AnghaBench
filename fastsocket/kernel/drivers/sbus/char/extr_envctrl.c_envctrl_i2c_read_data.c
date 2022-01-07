
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONTROL_ES0 ;
 scalar_t__ PCF8584_CSR ;
 scalar_t__ PCF8584_DATA ;
 int envtrl_i2c_test_pin () ;
 scalar_t__ i2c ;
 unsigned char readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static unsigned char envctrl_i2c_read_data(void)
{
 envtrl_i2c_test_pin();
 writeb(CONTROL_ES0, i2c + PCF8584_CSR);
 return readb(i2c + PCF8584_DATA);
}
