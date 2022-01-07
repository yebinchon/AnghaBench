
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;
typedef int fe_status_t ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int dib8000_read_word (struct dib8000_state*,int) ;

__attribute__((used)) static int dib8000_read_status(struct dvb_frontend *fe, fe_status_t * stat)
{
 struct dib8000_state *state = fe->demodulator_priv;
 u16 lock = dib8000_read_word(state, 568);

 *stat = 0;

 if ((lock >> 13) & 1)
  *stat |= FE_HAS_SIGNAL;

 if ((lock >> 8) & 1)
  *stat |= FE_HAS_CARRIER;

 if (((lock >> 1) & 0xf) == 0xf)
  *stat |= FE_HAS_SYNC;

 if (((lock >> 12) & 1) && ((lock >> 5) & 7))
  *stat |= FE_HAS_LOCK;

 if ((lock >> 12) & 1) {
  lock = dib8000_read_word(state, 554);
  if (lock & 0x01)
   *stat |= FE_HAS_VITERBI;

  lock = dib8000_read_word(state, 555);
  if (lock & 0x01)
   *stat |= FE_HAS_VITERBI;

  lock = dib8000_read_word(state, 556);
  if (lock & 0x01)
   *stat |= FE_HAS_VITERBI;
 }

 return 0;
}
