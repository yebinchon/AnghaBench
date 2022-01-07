
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int lgdt3304_i2c_write_reg (struct dvb_frontend*,int,int) ;
 int mdelay (int) ;

__attribute__((used)) static int lgdt3304_soft_Reset(struct dvb_frontend *fe)
{
 lgdt3304_i2c_write_reg(fe, 0x0002, 0x9a);
 lgdt3304_i2c_write_reg(fe, 0x0002, 0x9b);
 mdelay(200);
 return 0;
}
