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
struct ssb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_IMSTATE ; 
 int SSB_IMSTATE_IBE ; 
 int SSB_IMSTATE_TO ; 
 int /*<<< orphan*/  SSB_TMSHIGH ; 
 int SSB_TMSHIGH_SERR ; 
 int /*<<< orphan*/  SSB_TMSLOW ; 
 int SSB_TMSLOW_CLOCK ; 
 int SSB_TMSLOW_FGC ; 
 int SSB_TMSLOW_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_device*) ; 
 int FUNC2 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_device*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct ssb_device *dev, u32 core_specific_flags)
{
	u32 val;

	FUNC0(dev, core_specific_flags);
	FUNC3(dev, SSB_TMSLOW,
		    SSB_TMSLOW_RESET | SSB_TMSLOW_CLOCK |
		    SSB_TMSLOW_FGC | core_specific_flags);
	FUNC1(dev);

	/* Clear SERR if set. This is a hw bug workaround. */
	if (FUNC2(dev, SSB_TMSHIGH) & SSB_TMSHIGH_SERR)
		FUNC3(dev, SSB_TMSHIGH, 0);

	val = FUNC2(dev, SSB_IMSTATE);
	if (val & (SSB_IMSTATE_IBE | SSB_IMSTATE_TO)) {
		val &= ~(SSB_IMSTATE_IBE | SSB_IMSTATE_TO);
		FUNC3(dev, SSB_IMSTATE, val);
	}

	FUNC3(dev, SSB_TMSLOW,
		    SSB_TMSLOW_CLOCK | SSB_TMSLOW_FGC |
		    core_specific_flags);
	FUNC1(dev);

	FUNC3(dev, SSB_TMSLOW, SSB_TMSLOW_CLOCK |
		    core_specific_flags);
	FUNC1(dev);
}