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
struct TYPE_2__ {scalar_t__ workspace; } ;
struct gunzip_state {TYPE_1__ s; } ;

/* Variables and functions */
 int FUNC0 (struct gunzip_state*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(struct gunzip_state *state, void *dst, int dstlen)
{
	int len;

	len = FUNC0(state, dst, dstlen);

	if (state->s.workspace) {
		FUNC1(&state->s);
	}

	return len;
}