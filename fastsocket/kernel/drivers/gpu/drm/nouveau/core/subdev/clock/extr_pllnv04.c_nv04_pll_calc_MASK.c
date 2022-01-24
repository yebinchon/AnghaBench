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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  max_freq; } ;
struct nvbios_pll {TYPE_1__ vco2; } ;
struct nouveau_clock {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_clock*,struct nvbios_pll*,int /*<<< orphan*/ ,int*,int*,int*,int*,int*) ; 
 int FUNC1 (struct nouveau_clock*,struct nvbios_pll*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_clock*,char*) ; 

int
FUNC3(struct nouveau_clock *clk, struct nvbios_pll *info, u32 freq,
	      int *N1, int *M1, int *N2, int *M2, int *P)
{
	int ret;

	if (!info->vco2.max_freq) {
		ret = FUNC1(clk, info, freq, N1, M1, P);
		*N2 = 1;
		*M2 = 1;
	} else {
		ret = FUNC0(clk, info, freq, N1, M1, N2, M2, P);
	}

	if (!ret)
		FUNC2(clk, "unable to compute acceptable pll values\n");
	return ret;
}