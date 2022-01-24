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
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB8000M_POWER_ALL ; 
 int /*<<< orphan*/  DIBX000_ADC_ON ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_ON ; 
 scalar_t__ FUNC0 (struct dib8000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dib8000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct dib8000_state *state = fe->demodulator_priv;

	FUNC1(state, DIB8000M_POWER_ALL);
	FUNC0(state, DIBX000_ADC_ON);
	if (FUNC0(state, DIBX000_SLOW_ADC_ON) != 0)
		FUNC2("could not start Slow ADC");

	return 0;
}