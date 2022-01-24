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
struct cx24113_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cx24113_state*,int) ; 
 int FUNC1 (struct cx24113_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct cx24113_state *state, u8 on)
{
	u8 r = (FUNC0(state, 0x10) & 0x7f) | ((on & 0x1) << 7);
	return FUNC1(state, 0x10, r);
}