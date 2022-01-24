#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  buffersize; } ;
struct TYPE_8__ {TYPE_1__ bulk; } ;
struct TYPE_9__ {int count; TYPE_2__ u; int /*<<< orphan*/  endpoint; } ;
struct usb_data_stream {int /*<<< orphan*/  urbs_initialized; int /*<<< orphan*/ * dma_addr; TYPE_4__** urb_list; TYPE_3__ props; int /*<<< orphan*/ * buf_list; int /*<<< orphan*/  udev; } ;
struct TYPE_10__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_data_stream*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_data_stream*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_urb_complete ; 

__attribute__((used)) static int FUNC6(struct usb_data_stream *stream)
{
	int i, j;

	if ((i = FUNC2(stream,stream->props.count,
					stream->props.u.bulk.buffersize)) < 0)
		return i;

	/* allocate the URBs */
	for (i = 0; i < stream->props.count; i++) {
		stream->urb_list[i] = FUNC1(0, GFP_ATOMIC);
		if (!stream->urb_list[i]) {
			FUNC0("not enough memory for urb_alloc_urb!.\n");
			for (j = 0; j < i; j++)
				FUNC4(stream->urb_list[i]);
			return -ENOMEM;
		}
		FUNC3( stream->urb_list[i], stream->udev,
				FUNC5(stream->udev,stream->props.endpoint),
				stream->buf_list[i],
				stream->props.u.bulk.buffersize,
				usb_urb_complete, stream);

		stream->urb_list[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
		stream->urb_list[i]->transfer_dma = stream->dma_addr[i];
		stream->urbs_initialized++;
	}
	return 0;
}