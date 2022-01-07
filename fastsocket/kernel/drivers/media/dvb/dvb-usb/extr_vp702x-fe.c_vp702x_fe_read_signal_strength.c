
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vp702x_fe_state {int sig; } ;
struct dvb_frontend {struct vp702x_fe_state* demodulator_priv; } ;


 int vp702x_fe_refresh_state (struct vp702x_fe_state*) ;

__attribute__((used)) static int vp702x_fe_read_signal_strength(struct dvb_frontend* fe, u16 *strength)
{
 struct vp702x_fe_state *st = fe->demodulator_priv;
 vp702x_fe_refresh_state(st);

 *strength = (st->sig << 8) | st->sig;
 return 0;
}
