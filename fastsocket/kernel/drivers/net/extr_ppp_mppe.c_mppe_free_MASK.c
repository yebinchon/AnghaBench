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
struct ppp_mppe_state {scalar_t__ arc4; scalar_t__ sha1; struct ppp_mppe_state* sha1_digest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ppp_mppe_state*) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
	struct ppp_mppe_state *state = (struct ppp_mppe_state *) arg;
	if (state) {
	    if (state->sha1_digest)
		FUNC2(state->sha1_digest);
	    if (state->sha1)
		FUNC1(state->sha1);
	    if (state->arc4)
		FUNC0(state->arc4);
	    FUNC2(state);
	}
}