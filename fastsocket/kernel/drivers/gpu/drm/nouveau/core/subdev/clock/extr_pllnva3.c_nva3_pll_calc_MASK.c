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
typedef  int u32 ;
struct TYPE_2__ {int max_freq; int max_inputfreq; int min_inputfreq; int min_n; int max_n; scalar_t__ max_m; scalar_t__ min_m; } ;
struct nvbios_pll {int max_p; int min_p; int refclk; TYPE_1__ vco1; } ;
struct nouveau_clock {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_clock*,char*) ; 
 scalar_t__ FUNC4 (int) ; 

int
FUNC5(struct nouveau_clock *clock, struct nvbios_pll *info,
	      u32 freq, int *pN, int *pfN, int *pM, int *P)
{
	u32 best_err = ~0, err;
	int M, lM, hM, N, fN;

	*P = info->vco1.max_freq / freq;
	if (*P > info->max_p)
		*P = info->max_p;
	if (*P < info->min_p)
		*P = info->min_p;

	lM = (info->refclk + info->vco1.max_inputfreq) / info->vco1.max_inputfreq;
	lM = FUNC1(lM, (int)info->vco1.min_m);
	hM = (info->refclk + info->vco1.min_inputfreq) / info->vco1.min_inputfreq;
	hM = FUNC2(hM, (int)info->vco1.max_m);

	for (M = lM; M <= hM; M++) {
		u32 tmp = freq * *P * M;
		N  = tmp / info->refclk;
		fN = tmp % info->refclk;
		if (!pfN && fN >= info->refclk / 2)
			N++;

		if (N < info->vco1.min_n)
			continue;
		if (N > info->vco1.max_n)
			break;

		err = FUNC0(freq - (info->refclk * N / M / *P));
		if (err < best_err) {
			best_err = err;
			*pN = N;
			*pM = M;
		}

		if (pfN) {
			*pfN = (((fN << 13) / info->refclk) - 4096) & 0xffff;
			return freq;
		}
	}

	if (FUNC4(best_err == ~0)) {
		FUNC3(clock, "unable to find matching pll values\n");
		return -EINVAL;
	}

	return info->refclk * *pN / *pM / *P;
}