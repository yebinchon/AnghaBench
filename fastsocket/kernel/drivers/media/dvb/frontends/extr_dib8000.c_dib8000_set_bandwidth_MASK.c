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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  scalar_t__ timf ;
struct dib8000_state {scalar_t__ timf; int timf_default; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib8000_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct dib8000_state *state, u32 bw)
{
	u32 timf;

	if (bw == 0)
		bw = 6000;

	if (state->timf == 0) {
		FUNC1("using default timf");
		timf = state->timf_default;
	} else {
		FUNC1("using updated timf");
		timf = state->timf;
	}

	FUNC0(state, 29, (u16) ((timf >> 16) & 0xffff));
	FUNC0(state, 30, (u16) ((timf) & 0xffff));

	return 0;
}