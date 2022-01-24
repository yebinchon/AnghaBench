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
typedef  int u8 ;
struct itd1000_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int /*<<< orphan*/  frequency; } ;
struct dvb_frontend {struct itd1000_state* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLLCON1 ; 
 int FUNC0 (struct itd1000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct itd1000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct itd1000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct itd1000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe, struct dvb_frontend_parameters *p)
{
	struct itd1000_state *state = fe->tuner_priv;
	u8 pllcon1;

	FUNC1(state, p->frequency);
	FUNC2(state, p->u.qpsk.symbol_rate);

	pllcon1 = FUNC0(state, PLLCON1) & 0x7f;
	FUNC3(state, PLLCON1, pllcon1 | (1 << 7));
	FUNC3(state, PLLCON1, pllcon1);

	return 0;
}