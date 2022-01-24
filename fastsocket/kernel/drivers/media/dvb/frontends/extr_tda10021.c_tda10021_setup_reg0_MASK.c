#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct tda10021_state {int reg0; TYPE_1__* config; } ;
typedef  scalar_t__ fe_spectral_inversion_t ;
struct TYPE_2__ {scalar_t__ invert; } ;

/* Variables and functions */
 scalar_t__ INVERSION_ON ; 
 int /*<<< orphan*/  FUNC0 (struct tda10021_state*,int,int) ; 

__attribute__((used)) static int FUNC1 (struct tda10021_state* state, u8 reg0,
				fe_spectral_inversion_t inversion)
{
	reg0 |= state->reg0 & 0x63;

	if ((INVERSION_ON == inversion) ^ (state->config->invert == 0))
		reg0 &= ~0x20;
	else
		reg0 |= 0x20;

	FUNC0 (state, 0x00, reg0 & 0xfe);
	FUNC0 (state, 0x00, reg0 | 0x01);

	state->reg0 = reg0;
	return 0;
}