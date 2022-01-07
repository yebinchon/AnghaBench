
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; } ;


 int mxl5005s_writereg (struct dvb_frontend*,int,int,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int mxl5005s_writeregs(struct dvb_frontend *fe, u8 *addrtable,
 u8 *datatable, u8 len)
{
 int ret = 0, i;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 for (i = 0 ; i < len-1; i++) {
  ret = mxl5005s_writereg(fe, addrtable[i], datatable[i], 0);
  if (ret < 0)
   break;
 }

 ret = mxl5005s_writereg(fe, addrtable[i], datatable[i], 1);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return ret;
}
