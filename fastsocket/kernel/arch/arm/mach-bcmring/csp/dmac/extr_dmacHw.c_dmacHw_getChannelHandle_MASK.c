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
typedef  int dmacHw_ID_t ;
typedef  int /*<<< orphan*/  dmacHw_HANDLE_t ;

/* Variables and functions */
 int dmaChannelCount_0 ; 
 int dmaChannelCount_1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dmacHw_gCblk ; 

dmacHw_HANDLE_t FUNC2(dmacHw_ID_t channelId	/* [ IN ] DMA Channel Id */
    ) {
	int idx;

	switch ((channelId >> 8)) {
	case 0:
		FUNC0((channelId & 0xff) < dmaChannelCount_0);
		idx = (channelId & 0xff);
		break;
	case 1:
		FUNC0((channelId & 0xff) < dmaChannelCount_1);
		idx = dmaChannelCount_0 + (channelId & 0xff);
		break;
	default:
		FUNC0(0);
		return (dmacHw_HANDLE_t) -1;
	}

	return FUNC1(&dmacHw_gCblk[idx]);
}