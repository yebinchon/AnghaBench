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
struct TYPE_2__ {int /*<<< orphan*/  ofdm; } ;
struct dvb_frontend_parameters {TYPE_1__ u; int /*<<< orphan*/  inversion; } ;
struct dvb_frontend {struct cx22700_state* demodulator_priv; } ;
struct cx22700_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVERSION_OFF ; 
 int /*<<< orphan*/  INVERSION_ON ; 
 int FUNC0 (struct cx22700_state*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cx22700_state*,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
	struct cx22700_state* state = fe->demodulator_priv;
	u8 reg09 = FUNC1 (state, 0x09);

	p->inversion = reg09 & 0x1 ? INVERSION_ON : INVERSION_OFF;
	return FUNC0 (state, &p->u.ofdm);
}