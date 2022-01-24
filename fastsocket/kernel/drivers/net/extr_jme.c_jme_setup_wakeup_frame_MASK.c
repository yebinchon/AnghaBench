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
struct jme_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_WFODP ; 
 int /*<<< orphan*/  JME_WFOI ; 
 int WAKEUP_FRAME_MASK_DWNR ; 
 int WFOI_CRC_SEL ; 
 int WFOI_FRAME_SEL ; 
 int WFOI_MASK_SEL ; 
 int WFOI_MASK_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(struct jme_adapter *jme,
		u32 *mask, u32 crc, int fnr)
{
	int i;

	/*
	 * Setup CRC pattern
	 */
	FUNC0(jme, JME_WFOI, WFOI_CRC_SEL | (fnr & WFOI_FRAME_SEL));
	FUNC1();
	FUNC0(jme, JME_WFODP, crc);
	FUNC1();

	/*
	 * Setup Mask
	 */
	for (i = 0 ; i < WAKEUP_FRAME_MASK_DWNR ; ++i) {
		FUNC0(jme, JME_WFOI,
				((i << WFOI_MASK_SHIFT) & WFOI_MASK_SEL) |
				(fnr & WFOI_FRAME_SEL));
		FUNC1();
		FUNC0(jme, JME_WFODP, mask[i]);
		FUNC1();
	}
}