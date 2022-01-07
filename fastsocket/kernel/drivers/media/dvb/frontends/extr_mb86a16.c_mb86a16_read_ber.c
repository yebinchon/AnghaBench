
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mb86a16_state {int dummy; } ;
struct dvb_frontend {struct mb86a16_state* demodulator_priv; } ;


 int EREMOTEIO ;
 int MB86A16_BERLSB ;
 int MB86A16_BERMID ;
 int MB86A16_BERMON ;
 int MB86A16_BERMSB ;
 int MB86A16_BERTAB ;
 int MB86A16_DEBUG ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*,...) ;
 int mb86a16_read (struct mb86a16_state*,int ,int*) ;
 int verbose ;

__attribute__((used)) static int mb86a16_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 u8 ber_mon, ber_tab, ber_lsb, ber_mid, ber_msb, ber_tim, ber_rst;
 u32 timer;

 struct mb86a16_state *state = fe->demodulator_priv;

 *ber = 0;
 if (mb86a16_read(state, MB86A16_BERMON, &ber_mon) != 2)
  goto err;
 if (mb86a16_read(state, MB86A16_BERTAB, &ber_tab) != 2)
  goto err;
 if (mb86a16_read(state, MB86A16_BERLSB, &ber_lsb) != 2)
  goto err;
 if (mb86a16_read(state, MB86A16_BERMID, &ber_mid) != 2)
  goto err;
 if (mb86a16_read(state, MB86A16_BERMSB, &ber_msb) != 2)
  goto err;

 if (ber_mon & 0x04) {

  *ber = ber_tab & 0x1f;
  dprintk(verbose, MB86A16_DEBUG, 1, "BER coarse=[0x%02x]", *ber);
  if (ber_mon & 0x01) {






   ber_rst = ber_mon >> 3;
   *ber = (((ber_msb << 8) | ber_mid) << 8) | ber_lsb;
   if (ber_rst == 0)
    timer = 12500000;
   if (ber_rst == 1)
    timer = 25000000;
   if (ber_rst == 2)
    timer = 50000000;
   if (ber_rst == 3)
    timer = 100000000;

   *ber /= timer;
   dprintk(verbose, MB86A16_DEBUG, 1, "BER fine=[0x%02x]", *ber);
  } else {






   ber_tim = ber_mon >> 1;
   *ber = (((ber_msb << 8) | ber_mid) << 8) | ber_lsb;
   if (ber_tim == 0)
    timer = 16;
   if (ber_tim == 1)
    timer = 24;

   *ber /= 2 ^ timer;
   dprintk(verbose, MB86A16_DEBUG, 1, "BER fine=[0x%02x]", *ber);
  }
 }
 return 0;
err:
 dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");
 return -EREMOTEIO;
}
