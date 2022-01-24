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
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB7000P_POWER_ALL ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_ON ; 
 int /*<<< orphan*/  FUNC0 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *demod)
{
	struct dib7000p_state *state = demod->demodulator_priv;
	FUNC1(state, DIB7000P_POWER_ALL);
	FUNC0(state, DIBX000_SLOW_ADC_ON);
	return 0;
}