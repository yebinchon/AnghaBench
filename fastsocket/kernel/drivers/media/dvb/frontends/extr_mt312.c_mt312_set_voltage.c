
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mt312_state {TYPE_1__* config; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;
typedef size_t fe_sec_voltage_t ;
struct TYPE_2__ {scalar_t__ voltage_inverted; } ;


 int DISEQC_MODE ;
 int EINVAL ;
 size_t const SEC_VOLTAGE_OFF ;
 int mt312_writereg (struct mt312_state*,int ,int) ;

__attribute__((used)) static int mt312_set_voltage(struct dvb_frontend *fe, const fe_sec_voltage_t v)
{
 struct mt312_state *state = fe->demodulator_priv;
 const u8 volt_tab[3] = { 0x00, 0x40, 0x00 };
 u8 val;

 if (v > SEC_VOLTAGE_OFF)
  return -EINVAL;

 val = volt_tab[v];
 if (state->config->voltage_inverted)
  val ^= 0x40;

 return mt312_writereg(state, DISEQC_MODE, val);
}
