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
struct TYPE_2__ {struct ppp_deflate_state* workspace; } ;
struct ppp_deflate_state {TYPE_1__ strm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ppp_deflate_state*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(void *arg)
{
	struct ppp_deflate_state *state = (struct ppp_deflate_state *) arg;

	if (state) {
		FUNC1(&state->strm);
		FUNC0(state->strm.workspace);
		FUNC0(state);
	}
}