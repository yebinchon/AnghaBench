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
typedef  int u16 ;
struct cx24113_state {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (struct cx24113_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24113_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24113_state*,int,int) ; 

__attribute__((used)) static void FUNC3(struct cx24113_state *state, u16 n, s32 f, u8 r)
{
	u8 reg;
	FUNC2(state, 0x19, (n >> 1) & 0xff);

	reg = ((n & 0x1) << 7) | ((f >> 11) & 0x7f);
	FUNC2(state, 0x1a, reg);

	FUNC2(state, 0x1b, (f >> 3) & 0xff);

	reg = FUNC0(state, 0x1c) & 0x1f;
	FUNC2(state, 0x1c, reg | ((f & 0x7) << 5));

	FUNC1(state, r - 1);
}