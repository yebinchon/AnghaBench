#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dvb_frontend {struct af9013_state* demodulator_priv; } ;
struct af9013_state {scalar_t__ next_statistics_check; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_frontend*) ; 
 int FUNC1 (struct dvb_frontend*) ; 
 int FUNC2 (struct dvb_frontend*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe)
{
	struct af9013_state *state = fe->demodulator_priv;
	int ret;

	if (FUNC4(jiffies, state->next_statistics_check))
		return 0;

	/* set minimum statistic update interval */
	state->next_statistics_check = jiffies + FUNC3(1200);

	ret = FUNC1(fe);
	if (ret)
		goto error;
	ret = FUNC2(fe);
	if (ret)
		goto error;
	ret = FUNC0(fe);
	if (ret)
		goto error;

error:
	return ret;
}