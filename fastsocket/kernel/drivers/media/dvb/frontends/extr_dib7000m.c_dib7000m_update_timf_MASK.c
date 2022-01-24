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
struct dib7000m_state {int timf; int current_bandwidth; int /*<<< orphan*/  timf_default; } ;

/* Variables and functions */
 int FUNC0 (struct dib7000m_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib7000m_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dib7000m_state *state)
{
	u32 timf = (FUNC0(state, 436) << 16) | FUNC0(state, 437);
	state->timf = timf * 160 / (state->current_bandwidth / 50);
	FUNC1(state, 23, (u16) (timf >> 16));
	FUNC1(state, 24, (u16) (timf & 0xffff));
	FUNC2( "updated timf_frequency: %d (default: %d)",state->timf, state->timf_default);
}