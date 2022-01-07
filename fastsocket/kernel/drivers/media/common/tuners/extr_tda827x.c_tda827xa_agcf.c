
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda827x_priv {int i2c_addr; } ;
struct i2c_msg {unsigned char* buf; int len; int flags; int addr; } ;
struct dvb_frontend {struct tda827x_priv* tuner_priv; } ;


 int tuner_transfer (struct dvb_frontend*,struct i2c_msg*,int) ;

__attribute__((used)) static void tda827xa_agcf(struct dvb_frontend *fe)
{
 struct tda827x_priv *priv = fe->tuner_priv;
 unsigned char data[] = {0x80, 0x2c};
 struct i2c_msg msg = {.addr = priv->i2c_addr, .flags = 0,
         .buf = data, .len = 2};
 tuner_transfer(fe, &msg, 1);
}
