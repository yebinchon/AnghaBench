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
struct i5400_pvt {int dummy; } ;
struct i5400_dimm_info {int megabytes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct i5400_pvt*,int) ; 
 int FUNC6 (struct i5400_pvt*,int,int) ; 

__attribute__((used)) static void FUNC7(struct i5400_pvt *pvt, int csrow, int channel,
			struct i5400_dimm_info *dinfo)
{
	int mtr;
	int amb_present_reg;
	int addrBits;

	mtr = FUNC6(pvt, csrow, channel);
	if (FUNC0(mtr)) {
		amb_present_reg = FUNC5(pvt, channel);

		/* Determine if there is a DIMM present in this DIMM slot */
		if (amb_present_reg & (1 << csrow)) {
			/* Start with the number of bits for a Bank
			 * on the DRAM */
			addrBits = FUNC4(mtr);
			/* Add thenumber of ROW bits */
			addrBits += FUNC3(mtr);
			/* add the number of COLUMN bits */
			addrBits += FUNC1(mtr);
			/* add the number of RANK bits */
			addrBits += FUNC2(mtr);

			addrBits += 6;	/* add 64 bits per DIMM */
			addrBits -= 20;	/* divide by 2^^20 */
			addrBits -= 3;	/* 8 bits per bytes */

			dinfo->megabytes = 1 << addrBits;
		}
	}
}