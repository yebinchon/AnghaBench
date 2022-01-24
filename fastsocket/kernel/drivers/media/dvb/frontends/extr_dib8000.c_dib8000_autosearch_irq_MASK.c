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
typedef  int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
{
	struct dib8000_state *state = fe->demodulator_priv;
	u16 irq_pending = FUNC0(state, 1284);

	if (irq_pending & 0x1) {	// failed
		FUNC1("dib8000_autosearch_irq failed");
		return 1;
	}

	if (irq_pending & 0x2) {	// succeeded
		FUNC1("dib8000_autosearch_irq succeeded");
		return 2;
	}

	return 0;		// still pending
}