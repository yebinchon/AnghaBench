
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;


 int DIB3000MB_REG_PID_PARSE ;
 int deb_xfer (char*,char*) ;
 int wr (int ,int) ;

__attribute__((used)) static int dib3000mb_pid_parse(struct dvb_frontend *fe, int onoff)
{
 struct dib3000_state *state = fe->demodulator_priv;
 deb_xfer("%s pid parsing\n",onoff ? "enabling" : "disabling");
 wr(DIB3000MB_REG_PID_PARSE,onoff);
 return 0;
}
