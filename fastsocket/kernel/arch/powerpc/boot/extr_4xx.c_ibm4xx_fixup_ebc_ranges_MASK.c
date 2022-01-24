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

/* Variables and functions */
 int /*<<< orphan*/  DCRN_EBC0_CFGADDR ; 
 int /*<<< orphan*/  DCRN_EBC0_CFGDATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBC_BXCR_BAS ; 
 int EBC_BXCR_BU ; 
 int EBC_BXCR_BU_OFF ; 
 int EBC_NUM_BANKS ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 void* FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int*,int) ; 

void FUNC7(const char *ebc)
{
	void *devp;
	u32 bxcr;
	u32 ranges[EBC_NUM_BANKS*4];
	u32 *p = ranges;
	int i;

	for (i = 0; i < EBC_NUM_BANKS; i++) {
		FUNC5(DCRN_EBC0_CFGADDR, FUNC0(i));
		bxcr = FUNC4(DCRN_EBC0_CFGDATA);

		if ((bxcr & EBC_BXCR_BU) != EBC_BXCR_BU_OFF) {
			*p++ = i;
			*p++ = 0;
			*p++ = bxcr & EBC_BXCR_BAS;
			*p++ = FUNC1(bxcr);
		}
	}

	devp = FUNC3(ebc);
	if (! devp)
		FUNC2("Couldn't locate EBC node %s\n\r", ebc);

	FUNC6(devp, "ranges", ranges, (p - ranges) * sizeof(u32));
}