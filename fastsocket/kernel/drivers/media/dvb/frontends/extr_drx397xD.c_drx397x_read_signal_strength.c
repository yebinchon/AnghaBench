
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dvb_frontend {struct drx397xD_state* demodulator_priv; } ;
struct TYPE_3__ {int d00; } ;
struct TYPE_4__ {TYPE_1__ ifagc; } ;
struct drx397xD_state {TYPE_2__ config; } ;


 int RD16 (struct drx397xD_state*,int) ;

__attribute__((used)) static int drx397x_read_signal_strength(struct dvb_frontend *fe, u16 *strength)
{
 struct drx397xD_state *s = fe->demodulator_priv;
 int rc;

 if (s->config.ifagc.d00 == 2) {
  *strength = 0xffff;
  return 0;
 }
 rc = RD16(s, 0x0c20035);
 if (rc < 0) {
  *strength = 0;
  return 0;
 }
 rc &= 0x3ff;
 *strength = ~(7720 + (rc * 30744 >> 10));

 return 0;
}
