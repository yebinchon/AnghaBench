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
struct cx24113_state {scalar_t__ rev; } ;

/* Variables and functions */
 scalar_t__ REV_CX24113 ; 
 int FUNC0 (struct cx24113_state*,int) ; 
 int FUNC1 (struct cx24113_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct cx24113_state *state, u8 enable)
{
	u8 r21 = (FUNC0(state, 0x21) & 0xc0) | enable;
	if (state->rev == REV_CX24113)
		r21 |= (1 << 1);
	return FUNC1(state, 0x21, r21);
}