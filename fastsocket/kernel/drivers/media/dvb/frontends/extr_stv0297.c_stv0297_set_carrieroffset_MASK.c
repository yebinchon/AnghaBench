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
struct stv0297_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stv0297_state*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct stv0297_state*,int,int,long) ; 

__attribute__((used)) static void FUNC2(struct stv0297_state *state, long offset)
{
	long tmp;

	/* symrate is hardcoded to 10000 */
	tmp = offset * 26844L;	/* (2**28)/10000 */
	if (tmp < 0)
		tmp += 0x10000000;
	tmp &= 0x0FFFFFFF;

	FUNC0(state, 0x66, (unsigned char) (tmp & 0xFF));
	FUNC0(state, 0x67, (unsigned char) (tmp >> 8));
	FUNC0(state, 0x68, (unsigned char) (tmp >> 16));
	FUNC1(state, 0x69, 0x0F, (tmp >> 24) & 0x0f);
}