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
typedef  int u64 ;
typedef  int u32 ;
struct amd64_pvt {int dct_sel_lo; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amd64_pvt*) ; 
 scalar_t__ FUNC1 (struct amd64_pvt*) ; 
 scalar_t__ FUNC2 (struct amd64_pvt*) ; 
 int FUNC3 (struct amd64_pvt*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static u8 FUNC6(struct amd64_pvt *pvt, u64 sys_addr,
				bool hi_range_sel, u8 intlv_en)
{
	u8 dct_sel_high = (pvt->dct_sel_lo >> 1) & 1;

	if (FUNC0(pvt))
		return 0;

	if (hi_range_sel)
		return dct_sel_high;

	/*
	 * see F2x110[DctSelIntLvAddr] - channel interleave mode
	 */
	if (FUNC2(pvt)) {
		u8 intlv_addr = FUNC3(pvt);

		/* return DCT select function: 0=DCT0, 1=DCT1 */
		if (!intlv_addr)
			return sys_addr >> 6 & 1;

		if (intlv_addr & 0x2) {
			u8 shift = intlv_addr & 0x1 ? 9 : 6;
			u32 temp = FUNC5((u32) ((sys_addr >> 16) & 0x1F)) % 2;

			return ((sys_addr >> shift) & 1) ^ temp;
		}

		return (sys_addr >> (12 + FUNC4(intlv_en))) & 1;
	}

	if (FUNC1(pvt))
		return ~dct_sel_high & 1;

	return 0;
}