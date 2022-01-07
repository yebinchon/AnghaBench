
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s921_state {int dummy; } ;
struct dvb_frontend {struct s921_state* demodulator_priv; } ;


 int dprintk (char*) ;
 int s921_init ;
 int s921_writeregdata (struct s921_state*,int ) ;

__attribute__((used)) static int s921_initfe(struct dvb_frontend *fe)
{
 struct s921_state *state = fe->demodulator_priv;
 int rc;

 dprintk("\n");

 rc = s921_writeregdata(state, s921_init);
 if (rc < 0)
  return rc;

 return 0;
}
