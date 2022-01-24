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
struct dib3000mc_state {int dummy; } ;
typedef  scalar_t__ s16 ;

/* Variables and functions */
 scalar_t__ TRANSMISSION_MODE_8K ; 
 int FUNC0 (struct dib3000mc_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib3000mc_state*,int,int) ; 
 int* impulse_noise_val ; 

__attribute__((used)) static void FUNC2(struct dib3000mc_state *state, u8 mode, s16 nfft)
{
	u16 i;
	for (i = 58; i < 87; i++)
		FUNC1(state, i, impulse_noise_val[i-58]);

	if (nfft == TRANSMISSION_MODE_8K) {
		FUNC1(state, 58, 0x3b);
		FUNC1(state, 84, 0x00);
		FUNC1(state, 85, 0x8200);
	}

	FUNC1(state, 34, 0x1294);
	FUNC1(state, 35, 0x1ff8);
	if (mode == 1)
		FUNC1(state, 55, FUNC0(state, 55) | (1 << 10));
}