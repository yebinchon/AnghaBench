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
struct uvc_streaming {int urb_size; int /*<<< orphan*/ * urb_buffer; int /*<<< orphan*/ * urb_dma; TYPE_1__* dev; } ;
typedef  int gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int UVC_MAX_PACKETS ; 
 int /*<<< orphan*/  UVC_TRACE_VIDEO ; 
 unsigned int UVC_URBS ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_streaming*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 

__attribute__((used)) static int FUNC4(struct uvc_streaming *stream,
	unsigned int size, unsigned int psize, gfp_t gfp_flags)
{
	unsigned int npackets;
	unsigned int i;

	/* Buffers are already allocated, bail out. */
	if (stream->urb_size)
		return stream->urb_size / psize;

	/* Compute the number of packets. Bulk endpoints might transfer UVC
	 * payloads accross multiple URBs.
	 */
	npackets = FUNC0(size, psize);
	if (npackets > UVC_MAX_PACKETS)
		npackets = UVC_MAX_PACKETS;

	/* Retry allocations until one succeed. */
	for (; npackets > 1; npackets /= 2) {
		for (i = 0; i < UVC_URBS; ++i) {
			stream->urb_size = psize * npackets;
			stream->urb_buffer[i] = FUNC1(
				stream->dev->udev, stream->urb_size,
				gfp_flags | __GFP_NOWARN, &stream->urb_dma[i]);
			if (!stream->urb_buffer[i]) {
				FUNC2(stream);
				break;
			}
		}

		if (i == UVC_URBS) {
			FUNC3(UVC_TRACE_VIDEO, "Allocated %u URB buffers "
				"of %ux%u bytes each.\n", UVC_URBS, npackets,
				psize);
			return npackets;
		}
	}

	FUNC3(UVC_TRACE_VIDEO, "Failed to allocate URB buffers (%u bytes "
		"per packet).\n", psize);
	return 0;
}