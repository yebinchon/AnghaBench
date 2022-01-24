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

/* Variables and functions */
 scalar_t__ JAZZ_DUMMY_DEVICE ; 
 scalar_t__ JAZZ_R4030_CHNL_ADDR ; 
 scalar_t__ JAZZ_R4030_CHNL_COUNT ; 
 scalar_t__ JAZZ_R4030_CHNL_ENABLE ; 
 scalar_t__ JAZZ_R4030_CHNL_MODE ; 
 int R4030_CHNL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ vdma_debug ; 

void FUNC3(int channel)
{
	if (vdma_debug) {
		int status =
		    FUNC1(JAZZ_R4030_CHNL_ENABLE +
				     (channel << 5));

		FUNC0("vdma_disable: channel %d\n", channel);
		FUNC0("VDMA: channel %d status: %04x (%s) mode: "
		       "%02x addr: %06x count: %06x\n",
		       channel, status,
		       ((status & 0x600) ? "ERROR" : "OK"),
		       (unsigned) FUNC1(JAZZ_R4030_CHNL_MODE +
						   (channel << 5)),
		       (unsigned) FUNC1(JAZZ_R4030_CHNL_ADDR +
						   (channel << 5)),
		       (unsigned) FUNC1(JAZZ_R4030_CHNL_COUNT +
						   (channel << 5)));
	}

	FUNC2(JAZZ_R4030_CHNL_ENABLE + (channel << 5),
			  FUNC1(JAZZ_R4030_CHNL_ENABLE +
					   (channel << 5)) &
			  ~R4030_CHNL_ENABLE);

	/*
	 * After disabling a DMA channel a remote bus register should be
	 * read to ensure that the current DMA acknowledge cycle is completed.
	 */
	*((volatile unsigned int *) JAZZ_DUMMY_DEVICE);
}