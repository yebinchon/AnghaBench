
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0288_state {int dummy; } ;
struct dvb_frontend {struct stv0288_state* demodulator_priv; } ;


 int EINVAL ;
 int dprintk (char*) ;
 int stv0288_writeregI (struct stv0288_state*,int,unsigned char) ;

__attribute__((used)) static int stv0288_set_symbolrate(struct dvb_frontend *fe, u32 srate)
{
 struct stv0288_state *state = fe->demodulator_priv;
 unsigned int temp;
 unsigned char b[3];

 if ((srate < 1000000) || (srate > 45000000))
  return -EINVAL;

 temp = (unsigned int)srate / 1000;

  temp = temp * 32768;
  temp = temp / 25;
  temp = temp / 125;
  b[0] = (unsigned char)((temp >> 12) & 0xff);
  b[1] = (unsigned char)((temp >> 4) & 0xff);
  b[2] = (unsigned char)((temp << 4) & 0xf0);
  stv0288_writeregI(state, 0x28, 0x80);
  stv0288_writeregI(state, 0x29, 0);
  stv0288_writeregI(state, 0x2a, 0);

  stv0288_writeregI(state, 0x28, b[0]);
  stv0288_writeregI(state, 0x29, b[1]);
  stv0288_writeregI(state, 0x2a, b[2]);
  dprintk("stv0288: stv0288_set_symbolrate\n");

 return 0;
}
