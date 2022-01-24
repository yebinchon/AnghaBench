#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mt312_state {TYPE_1__* config; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;
typedef  size_t fe_sec_voltage_t ;
struct TYPE_2__ {scalar_t__ voltage_inverted; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISEQC_MODE ; 
 int EINVAL ; 
 size_t const SEC_VOLTAGE_OFF ; 
 int FUNC0 (struct mt312_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe, const fe_sec_voltage_t v)
{
	struct mt312_state *state = fe->demodulator_priv;
	const u8 volt_tab[3] = { 0x00, 0x40, 0x00 };
	u8 val;

	if (v > SEC_VOLTAGE_OFF)
		return -EINVAL;

	val = volt_tab[v];
	if (state->config->voltage_inverted)
		val ^= 0x40;

	return FUNC0(state, DISEQC_MODE, val);
}