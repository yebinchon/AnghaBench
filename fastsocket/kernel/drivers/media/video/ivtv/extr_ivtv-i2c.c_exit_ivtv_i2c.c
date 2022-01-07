
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int i2c_adap; } ;


 int IVTV_DEBUG_I2C (char*) ;
 int i2c_del_adapter (int *) ;

void exit_ivtv_i2c(struct ivtv *itv)
{
 IVTV_DEBUG_I2C("i2c exit\n");

 i2c_del_adapter(&itv->i2c_adap);
}
