#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mt312_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fec_inner; int /*<<< orphan*/  symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int /*<<< orphan*/  inversion; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;

/* Variables and functions */
 int FUNC0 (struct mt312_state*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mt312_state*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mt312_state*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe,
			      struct dvb_frontend_parameters *p)
{
	struct mt312_state *state = fe->demodulator_priv;
	int ret;

	ret = FUNC1(state, &p->inversion);
	if (ret < 0)
		return ret;

	ret = FUNC2(state, &p->u.qpsk.symbol_rate);
	if (ret < 0)
		return ret;

	ret = FUNC0(state, &p->u.qpsk.fec_inner);
	if (ret < 0)
		return ret;

	return 0;
}