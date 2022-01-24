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
struct sigcontext {int dummy; } ;

/* Variables and functions */
 int SIGIO ; 
 int /*<<< orphan*/  SIGIO_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct sigcontext*) ; 
 int signals_enabled ; 
 int /*<<< orphan*/  signals_pending ; 

void FUNC3(int sig, struct sigcontext *sc)
{
	int enabled;

	enabled = signals_enabled;
	if (!enabled && (sig == SIGIO)) {
		signals_pending |= SIGIO_MASK;
		return;
	}

	FUNC0();

	FUNC2(sig, sc);

	FUNC1(enabled);
}