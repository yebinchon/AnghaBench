
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int i2c_state; } ;


 int IVTV_REG_I2C_SETSCL_OFFSET ;
 int write_reg (int,int ) ;

__attribute__((used)) static void ivtv_setscl_old(void *data, int state)
{
 struct ivtv *itv = (struct ivtv *)data;

 if (state)
  itv->i2c_state |= 0x01;
 else
  itv->i2c_state &= ~0x01;



 write_reg(~itv->i2c_state, IVTV_REG_I2C_SETSCL_OFFSET);
}
