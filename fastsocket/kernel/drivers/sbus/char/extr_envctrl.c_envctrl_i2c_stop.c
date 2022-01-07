
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OBD_SEND_STOP ;
 scalar_t__ PCF8584_CSR ;
 int envtrl_i2c_test_pin () ;
 scalar_t__ i2c ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void envctrl_i2c_stop(void)
{
 envtrl_i2c_test_pin();
 writeb(OBD_SEND_STOP, i2c + PCF8584_CSR);
}
