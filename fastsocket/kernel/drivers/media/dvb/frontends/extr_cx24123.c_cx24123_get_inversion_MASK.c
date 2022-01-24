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
typedef  int u8 ;
struct cx24123_state {int dummy; } ;
typedef  int /*<<< orphan*/  fe_spectral_inversion_t ;

/* Variables and functions */
 int /*<<< orphan*/  INVERSION_OFF ; 
 int /*<<< orphan*/  INVERSION_ON ; 
 int FUNC0 (struct cx24123_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct cx24123_state *state,
	fe_spectral_inversion_t *inversion)
{
	u8 val;

	val = FUNC0(state, 0x1b) >> 7;

	if (val == 0) {
		FUNC1("read inversion off\n");
		*inversion = INVERSION_OFF;
	} else {
		FUNC1("read inversion on\n");
		*inversion = INVERSION_ON;
	}

	return 0;
}