#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct itd1000_state {int frequency; } ;
struct TYPE_3__ {int freq; int* values; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FREF ; 
 scalar_t__ PLLFH ; 
 scalar_t__ PLLFL ; 
 scalar_t__ PLLFM ; 
 scalar_t__ PLLNH ; 
 scalar_t__ PLLNL ; 
 scalar_t__ RFST1 ; 
 scalar_t__ RFTR ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 TYPE_1__* itd1000_fre_values ; 
 int FUNC3 (struct itd1000_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct itd1000_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct itd1000_state*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC6(struct itd1000_state *state, u32 freq_khz)
{
	int i, j;
	u32 plln, pllf;
	u64 tmp;

	plln = (freq_khz * 1000) / 2 / FREF;

	/* Compute the factional part times 1000 */
	tmp  = plln % 1000000;
	plln /= 1000000;

	tmp *= 1048576;
	FUNC2(tmp, 1000000);
	pllf = (u32) tmp;

	state->frequency = ((plln * 1000) + (pllf * 1000)/1048576) * 2*FREF;
	FUNC1("frequency: %dkHz (wanted) %dkHz (set), PLLF = %d, PLLN = %d", freq_khz, state->frequency, pllf, plln);

	FUNC5(state, PLLNH, 0x80); /* PLLNH */;
	FUNC5(state, PLLNL, plln & 0xff);
	FUNC5(state, PLLFH, (FUNC3(state, PLLFH) & 0xf0) | ((pllf >> 16) & 0x0f));
	FUNC5(state, PLLFM, (pllf >> 8) & 0xff);
	FUNC5(state, PLLFL, (pllf >> 0) & 0xff);

	for (i = 0; i < FUNC0(itd1000_fre_values); i++) {
		if (freq_khz <= itd1000_fre_values[i].freq) {
			FUNC1("fre_values: %d", i);
			FUNC5(state, RFTR, itd1000_fre_values[i].values[0]);
			for (j = 0; j < 9; j++)
				FUNC5(state, RFST1+j, itd1000_fre_values[i].values[j+1]);
			break;
		}
	}

	FUNC4(state, freq_khz);
}