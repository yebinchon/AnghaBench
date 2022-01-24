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
typedef  size_t u8 ;
struct itd1000_state {size_t* shadow; } ;

/* Variables and functions */
 int FUNC0 (struct itd1000_state*,size_t,size_t*,int) ; 

__attribute__((used)) static inline int FUNC1(struct itd1000_state *state, u8 r, u8 v)
{
	int ret = FUNC0(state, r, &v, 1);
	state->shadow[r] = v;
	return ret;
}