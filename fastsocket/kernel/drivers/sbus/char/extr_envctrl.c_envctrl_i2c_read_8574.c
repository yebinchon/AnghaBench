
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int envctrl_i2c_read_addr (unsigned char) ;
 unsigned char envctrl_i2c_read_data () ;
 int envctrl_i2c_stop () ;

__attribute__((used)) static unsigned char envctrl_i2c_read_8574(unsigned char addr)
{
 unsigned char rd;

 envctrl_i2c_read_addr(addr);


 rd = envctrl_i2c_read_data();
 envctrl_i2c_stop();
 return rd;
}
