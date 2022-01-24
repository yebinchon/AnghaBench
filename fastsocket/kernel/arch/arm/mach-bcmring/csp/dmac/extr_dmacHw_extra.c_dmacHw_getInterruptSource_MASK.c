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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  dmacHw_HANDLE_t ;
struct TYPE_3__ {int channel; int /*<<< orphan*/  module; } ;

/* Variables and functions */
 size_t dmaChannelCount_0 ; 
 size_t dmaChannelCount_1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* dmacHw_gCblk ; 

dmacHw_HANDLE_t FUNC4(void)
{
	uint32_t i;

	for (i = 0; i < dmaChannelCount_0 + dmaChannelCount_1; i++) {
		if ((FUNC3(dmacHw_gCblk[i].module) &
		     ((0x00000001 << dmacHw_gCblk[i].channel)))
		    || (FUNC1(dmacHw_gCblk[i].module) &
			((0x00000001 << dmacHw_gCblk[i].channel)))
		    || (FUNC2(dmacHw_gCblk[i].module) &
			((0x00000001 << dmacHw_gCblk[i].channel)))
		    ) {
			return FUNC0(&dmacHw_gCblk[i]);
		}
	}
	return FUNC0(NULL);
}