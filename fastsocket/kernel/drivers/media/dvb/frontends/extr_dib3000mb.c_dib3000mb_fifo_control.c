
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;


 int DIB3000MB_FIFO_ACTIVATE ;
 int DIB3000MB_FIFO_INHIBIT ;
 int DIB3000MB_REG_FIFO ;
 int deb_xfer (char*,char*) ;
 int wr (int ,int ) ;

__attribute__((used)) static int dib3000mb_fifo_control(struct dvb_frontend *fe, int onoff)
{
 struct dib3000_state *state = fe->demodulator_priv;

 deb_xfer("%s fifo\n",onoff ? "enabling" : "disabling");
 if (onoff) {
  wr(DIB3000MB_REG_FIFO, DIB3000MB_FIFO_ACTIVATE);
 } else {
  wr(DIB3000MB_REG_FIFO, DIB3000MB_FIFO_INHIBIT);
 }
 return 0;
}
