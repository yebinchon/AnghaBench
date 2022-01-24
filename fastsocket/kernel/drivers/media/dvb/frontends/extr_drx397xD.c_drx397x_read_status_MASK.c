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
struct dvb_frontend {struct drx397xD_state* demodulator_priv; } ;
struct drx397xD_state {int dummy; } ;
typedef  int fe_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drx397xD_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drx397xD_state*) ; 
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int FE_HAS_SYNC ; 
 int FE_HAS_VITERBI ; 
 int /*<<< orphan*/  FUNC2 (struct drx397xD_state*,int*) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, fe_status_t *status)
{
	struct drx397xD_state *s = fe->demodulator_priv;
	int lockstat;

	FUNC2(s, &lockstat);

	*status = 0;
	if (lockstat & 2) {
		FUNC1(s);
		FUNC0(s, 1);
		*status = FE_HAS_LOCK | FE_HAS_SYNC | FE_HAS_VITERBI;
	}
	if (lockstat & 4)
		*status |= FE_HAS_CARRIER | FE_HAS_SIGNAL;

	return 0;
}