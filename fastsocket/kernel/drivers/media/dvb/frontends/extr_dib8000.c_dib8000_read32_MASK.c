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
typedef  int u16 ;
struct dib8000_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib8000_state*,int) ; 

__attribute__((used)) static u32 FUNC1(struct dib8000_state *state, u16 reg)
{
	u16 rw[2];

	rw[0] = FUNC0(state, reg + 0);
	rw[1] = FUNC0(state, reg + 1);

	return ((rw[0] << 16) | (rw[1]));
}