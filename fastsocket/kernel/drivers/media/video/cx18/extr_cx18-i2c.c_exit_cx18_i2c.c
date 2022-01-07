
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int * i2c_adap; } ;


 int CX18_DEBUG_I2C (char*) ;
 int CX18_REG_I2C_1_WR ;
 int CX18_REG_I2C_2_WR ;
 int cx18_read_reg (struct cx18*,int ) ;
 int cx18_write_reg (struct cx18*,int,int ) ;
 int i2c_del_adapter (int *) ;

void exit_cx18_i2c(struct cx18 *cx)
{
 int i;
 CX18_DEBUG_I2C("i2c exit\n");
 cx18_write_reg(cx, cx18_read_reg(cx, CX18_REG_I2C_1_WR) | 4,
       CX18_REG_I2C_1_WR);
 cx18_write_reg(cx, cx18_read_reg(cx, CX18_REG_I2C_2_WR) | 4,
       CX18_REG_I2C_2_WR);

 for (i = 0; i < 2; i++) {
  i2c_del_adapter(&cx->i2c_adap[i]);
 }
}
