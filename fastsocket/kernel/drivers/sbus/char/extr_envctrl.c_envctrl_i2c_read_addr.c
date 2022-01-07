
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char OBD_SEND_START ;
 unsigned char OBD_SEND_STOP ;
 scalar_t__ PCF8584_CSR ;
 scalar_t__ PCF8584_DATA ;
 int STATUS_LRB ;
 int envctrl_i2c_test_bb () ;
 int envtrl_i2c_test_pin () ;
 scalar_t__ i2c ;
 int readb (scalar_t__) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static int envctrl_i2c_read_addr(unsigned char addr)
{
 envctrl_i2c_test_bb();


 writeb(addr + 1, i2c + PCF8584_DATA);

 envctrl_i2c_test_bb();

 writeb(OBD_SEND_START, i2c + PCF8584_CSR);


 envtrl_i2c_test_pin();


 if (!(readb(i2c + PCF8584_CSR) & STATUS_LRB)) {
  return readb(i2c + PCF8584_DATA);
 } else {
  writeb(OBD_SEND_STOP, i2c + PCF8584_CSR);
  return 0;
 }
}
