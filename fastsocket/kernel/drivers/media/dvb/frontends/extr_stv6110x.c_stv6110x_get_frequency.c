
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv6110x_state {int * regs; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;


 int MAKEWORD16 (int,int) ;
 int REFCLOCK_kHz ;
 int STV6110x_GETFIELD (int ,int ) ;
 size_t STV6110x_TNG0 ;
 size_t STV6110x_TNG1 ;
 int TNG0_N_DIV_7_0 ;
 int TNG1_DIV4SEL ;
 int TNG1_N_DIV_11_8 ;
 int TNG1_R_DIV ;
 int stv6110x_read_reg (struct stv6110x_state*,size_t,int *) ;

__attribute__((used)) static int stv6110x_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct stv6110x_state *stv6110x = fe->tuner_priv;

 stv6110x_read_reg(stv6110x, STV6110x_TNG1, &stv6110x->regs[STV6110x_TNG1]);
 stv6110x_read_reg(stv6110x, STV6110x_TNG0, &stv6110x->regs[STV6110x_TNG0]);

 *frequency = (MAKEWORD16(STV6110x_GETFIELD(TNG1_N_DIV_11_8, stv6110x->regs[STV6110x_TNG1]),
     STV6110x_GETFIELD(TNG0_N_DIV_7_0, stv6110x->regs[STV6110x_TNG0]))) * REFCLOCK_kHz;

 *frequency /= (1 << (STV6110x_GETFIELD(TNG1_R_DIV, stv6110x->regs[STV6110x_TNG1]) +
        STV6110x_GETFIELD(TNG1_DIV4SEL, stv6110x->regs[STV6110x_TNG1])));

 *frequency >>= 2;

 return 0;
}
