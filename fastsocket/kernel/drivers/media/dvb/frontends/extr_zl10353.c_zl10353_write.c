
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {int dummy; } ;


 int zl10353_single_write (struct dvb_frontend*,int ,int ) ;

__attribute__((used)) static int zl10353_write(struct dvb_frontend *fe, u8 *ibuf, int ilen)
{
 int err, i;
 for (i = 0; i < ilen - 1; i++)
  if ((err = zl10353_single_write(fe, ibuf[0] + i, ibuf[i + 1])))
   return err;

 return 0;
}
