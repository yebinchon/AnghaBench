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
struct dvb_frontend {struct cx22702_state* demodulator_priv; } ;
struct cx22702_state {TYPE_1__* config; } ;
struct TYPE_2__ {int output_mode; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx22702_state*,int,int) ; 
 int* init_tab ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe)
{
	int i;
	struct cx22702_state *state = fe->demodulator_priv;

	FUNC2(state, 0x00, 0x02);

	FUNC3(10);

	for (i = 0; i < FUNC0(init_tab); i += 2)
		FUNC2(state, init_tab[i], init_tab[i + 1]);

	FUNC2(state, 0xf8, (state->config->output_mode << 1)
		& 0x02);

	FUNC1(fe, 0);

	return 0;
}