
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mb86a16_state {int dummy; } ;
struct dvb_frontend {struct mb86a16_state* demodulator_priv; } ;


 int EREMOTEIO ;
 int MB86A16_DISTMON ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*) ;
 int mb86a16_read (struct mb86a16_state*,int ,int *) ;
 int verbose ;

__attribute__((used)) static int mb86a16_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 u8 dist;
 struct mb86a16_state *state = fe->demodulator_priv;

 if (mb86a16_read(state, MB86A16_DISTMON, &dist) != 2) {
  dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");
  return -EREMOTEIO;
 }
 *ucblocks = dist;

 return 0;
}
