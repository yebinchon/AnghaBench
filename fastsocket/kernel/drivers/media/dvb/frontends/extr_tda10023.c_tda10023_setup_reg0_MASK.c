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
struct tda10023_state {int reg0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tda10023_state*,int,int) ; 

__attribute__((used)) static int FUNC1 (struct tda10023_state* state, u8 reg0)
{
	reg0 |= state->reg0 & 0x63;

	FUNC0 (state, 0x00, reg0 & 0xfe);
	FUNC0 (state, 0x00, reg0 | 0x01);

	state->reg0 = reg0;
	return 0;
}