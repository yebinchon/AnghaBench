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
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;
typedef  int fe_sec_voltage_t ;

/* Variables and functions */
 int EINVAL ; 
#define  SEC_VOLTAGE_13 129 
#define  SEC_VOLTAGE_18 128 
 int FUNC0 (struct cx24110_state*,int) ; 
 int FUNC1 (struct cx24110_state*,int,int) ; 

__attribute__((used)) static int FUNC2 (struct dvb_frontend* fe, fe_sec_voltage_t voltage)
{
	struct cx24110_state *state = fe->demodulator_priv;

	switch (voltage) {
	case SEC_VOLTAGE_13:
		return FUNC1(state,0x76,(FUNC0(state,0x76)&0x3b)|0xc0);
	case SEC_VOLTAGE_18:
		return FUNC1(state,0x76,(FUNC0(state,0x76)&0x3b)|0x40);
	default:
		return -EINVAL;
	};
}