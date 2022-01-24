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
struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB7000M_POWER_INTERFACE_ONLY ; 
 int /*<<< orphan*/  DIBX000_ADC_OFF ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_OFF ; 
 int /*<<< orphan*/  OUTMODE_HIGH_Z ; 
 int FUNC0 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *demod)
{
	struct dib7000m_state *st = demod->demodulator_priv;
	FUNC1(st, OUTMODE_HIGH_Z);
	FUNC2(st, DIB7000M_POWER_INTERFACE_ONLY);
	return FUNC0(st, DIBX000_SLOW_ADC_OFF) |
		FUNC0(st, DIBX000_ADC_OFF);
}