
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct itd1000_state {int dummy; } ;
struct TYPE_3__ {int symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int frequency; } ;
struct dvb_frontend {struct itd1000_state* tuner_priv; } ;


 int PLLCON1 ;
 int itd1000_read_reg (struct itd1000_state*,int ) ;
 int itd1000_set_lo (struct itd1000_state*,int ) ;
 int itd1000_set_lpf_bw (struct itd1000_state*,int ) ;
 int itd1000_write_reg (struct itd1000_state*,int ,int) ;

__attribute__((used)) static int itd1000_set_parameters(struct dvb_frontend *fe, struct dvb_frontend_parameters *p)
{
 struct itd1000_state *state = fe->tuner_priv;
 u8 pllcon1;

 itd1000_set_lo(state, p->frequency);
 itd1000_set_lpf_bw(state, p->u.qpsk.symbol_rate);

 pllcon1 = itd1000_read_reg(state, PLLCON1) & 0x7f;
 itd1000_write_reg(state, PLLCON1, pllcon1 | (1 << 7));
 itd1000_write_reg(state, PLLCON1, pllcon1);

 return 0;
}
