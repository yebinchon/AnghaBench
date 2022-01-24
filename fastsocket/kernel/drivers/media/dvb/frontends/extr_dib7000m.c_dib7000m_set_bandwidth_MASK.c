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
struct dib7000m_state {int current_bandwidth; scalar_t__ timf; int timf_default; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib7000m_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct dib7000m_state *state, u32 bw)
{
	u32 timf;

	// store the current bandwidth for later use
	state->current_bandwidth = bw;

	if (state->timf == 0) {
		FUNC1( "using default timf");
		timf = state->timf_default;
	} else {
		FUNC1( "using updated timf");
		timf = state->timf;
	}

	timf = timf * (bw / 50) / 160;

	FUNC0(state, 23, (u16) ((timf >> 16) & 0xffff));
	FUNC0(state, 24, (u16) ((timf      ) & 0xffff));

	return 0;
}