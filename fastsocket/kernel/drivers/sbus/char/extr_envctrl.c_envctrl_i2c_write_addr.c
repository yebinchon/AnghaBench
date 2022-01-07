
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char OBD_SEND_START ;
 scalar_t__ PCF8584_CSR ;
 scalar_t__ PCF8584_DATA ;
 int envctrl_i2c_test_bb () ;
 scalar_t__ i2c ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void envctrl_i2c_write_addr(unsigned char addr)
{
 envctrl_i2c_test_bb();
 writeb(addr, i2c + PCF8584_DATA);


 writeb(OBD_SEND_START, i2c + PCF8584_CSR);
}
