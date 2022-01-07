
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dummy; } ;


 int IVTV_REG_I2C_SETSCL_OFFSET ;
 int write_reg (int,int ) ;

__attribute__((used)) static void ivtv_setscl(struct ivtv *itv, int state)
{


 write_reg(~state, IVTV_REG_I2C_SETSCL_OFFSET);
}
