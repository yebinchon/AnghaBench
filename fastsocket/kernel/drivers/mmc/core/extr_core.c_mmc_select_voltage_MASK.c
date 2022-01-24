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
struct TYPE_2__ {int vdd; } ;
struct mmc_host {int ocr_avail; TYPE_1__ ios; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

u32 FUNC4(struct mmc_host *host, u32 ocr)
{
	int bit;

	ocr &= host->ocr_avail;

	bit = FUNC0(ocr);
	if (bit) {
		bit -= 1;

		ocr &= 3 << bit;

		host->ios.vdd = bit;
		FUNC2(host);
	} else {
		FUNC3("%s: host doesn't support card's voltages\n",
				FUNC1(host));
		ocr = 0;
	}

	return ocr;
}