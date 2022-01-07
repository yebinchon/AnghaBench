
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itd1000_state {int dummy; } ;
struct dvb_frontend {struct itd1000_state* tuner_priv; } ;


 int ARRAY_SIZE (int **) ;
 int ** itd1000_init_tab ;
 int ** itd1000_reinit_tab ;
 int itd1000_write_reg (struct itd1000_state*,int ,int ) ;

__attribute__((used)) static int itd1000_init(struct dvb_frontend *fe)
{
 struct itd1000_state *state = fe->tuner_priv;
 int i;

 for (i = 0; i < ARRAY_SIZE(itd1000_init_tab); i++)
  itd1000_write_reg(state, itd1000_init_tab[i][0], itd1000_init_tab[i][1]);

 for (i = 0; i < ARRAY_SIZE(itd1000_reinit_tab); i++)
  itd1000_write_reg(state, itd1000_reinit_tab[i][0], itd1000_reinit_tab[i][1]);

 return 0;
}
