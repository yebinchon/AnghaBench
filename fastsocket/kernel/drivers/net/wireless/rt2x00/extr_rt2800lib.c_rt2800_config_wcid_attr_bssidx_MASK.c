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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_WCID_ATTRIBUTE_BSS_IDX ; 
 int /*<<< orphan*/  MAC_WCID_ATTRIBUTE_BSS_IDX_EXT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev,
					   int wcid, u32 bssidx)
{
	u32 offset = FUNC0(wcid);
	u32 reg;

	/*
	 * The BSS Idx numbers is split in a main value of 3 bits,
	 * and a extended field for adding one additional bit to the value.
	 */
	FUNC1(rt2x00dev, offset, &reg);
	FUNC3(&reg, MAC_WCID_ATTRIBUTE_BSS_IDX, (bssidx & 0x7));
	FUNC3(&reg, MAC_WCID_ATTRIBUTE_BSS_IDX_EXT,
			   (bssidx & 0x8) >> 3);
	FUNC2(rt2x00dev, offset, reg);
}