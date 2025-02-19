
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct mb86a16_state {int dummy; } ;
struct dvb_frontend {struct mb86a16_state* demodulator_priv; } ;
struct TYPE_3__ {scalar_t__ cn_reg; int cn_val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EREMOTEIO ;
 int MB86A16_ERROR ;
 TYPE_1__* cnr_tab ;
 int dprintk (int ,int ,int,char*,...) ;
 int mb86a16_read (struct mb86a16_state*,int,scalar_t__*) ;
 int verbose ;

__attribute__((used)) static int mb86a16_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct mb86a16_state *state = fe->demodulator_priv;
 int i = 0;
 int low_tide = 2, high_tide = 30, q_level;
 u8 cn;

 *snr = 0;
 if (mb86a16_read(state, 0x26, &cn) != 2) {
  dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");
  return -EREMOTEIO;
 }

 for (i = 0; i < ARRAY_SIZE(cnr_tab); i++) {
  if (cn < cnr_tab[i].cn_reg) {
   *snr = cnr_tab[i].cn_val;
   break;
  }
 }
 q_level = (*snr * 100) / (high_tide - low_tide);
 dprintk(verbose, MB86A16_ERROR, 1, "SNR (Quality) = [%d dB], Level=%d %%", *snr, q_level);
 *snr = (0xffff - 0xff) + *snr;

 return 0;
}
