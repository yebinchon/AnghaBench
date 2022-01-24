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
typedef  int u32 ;
struct TYPE_3__ {int symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {int /*<<< orphan*/  frequency; TYPE_2__ u; } ;
struct dvb_frontend {struct cx24113_state* tuner_priv; } ;
struct cx24113_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_frontend*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24113_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24113_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
		struct dvb_frontend_parameters *p)
{
	struct cx24113_state *state = fe->tuner_priv;
	/* for a ROLL-OFF factor of 0.35, 0.2: 600, 0.25: 625 */
	u32 roll_off = 675;
	u32 bw;

	bw  = ((p->u.qpsk.symbol_rate/100) * roll_off) / 1000;
	bw += (10000000/100) + 5;
	bw /= 10;
	bw += 1000;
	FUNC1(state, bw);

	FUNC2(state, p->frequency);
	FUNC3(5);
	return FUNC0(fe, &bw);
}