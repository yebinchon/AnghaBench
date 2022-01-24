#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* pdabusb_t ;
typedef  TYPE_3__* pbuff_t ;
typedef  int /*<<< orphan*/  buff_t ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int transfer_buffer_length; int number_of_packets; unsigned int pipe; int /*<<< orphan*/  buff_list; TYPE_1__* iso_frame_desc; struct TYPE_13__* purb; int /*<<< orphan*/  transfer_flags; TYPE_4__* dev; struct TYPE_13__* context; int /*<<< orphan*/  complete; int /*<<< orphan*/  transfer_buffer; TYPE_2__* s; } ;
struct TYPE_12__ {int total_buffer_size; int got_mem; int /*<<< orphan*/  free_buff_list; TYPE_4__* usbdev; } ;
struct TYPE_11__ {int offset; int length; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_ISO_ASAP ; 
 int /*<<< orphan*/  _DABUSB_ISOPIPE ; 
 int _ISOPIPESIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  dabusb_iso_complete ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 unsigned int FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11 (pdabusb_t s)
{
	int transfer_len = 0;
	pbuff_t b;
	unsigned int pipe = FUNC10 (s->usbdev, _DABUSB_ISOPIPE);
	int pipesize = FUNC8 (s->usbdev, pipe, FUNC9 (pipe));
	int packets = _ISOPIPESIZE / pipesize;
	int transfer_buffer_length = packets * pipesize;
	int i;

	FUNC1("dabusb_alloc_buffers pipesize:%d packets:%d transfer_buffer_len:%d",
		 pipesize, packets, transfer_buffer_length);

	while (transfer_len < (s->total_buffer_size << 10)) {
		b = FUNC5(sizeof (buff_t), GFP_KERNEL);
		if (!b) {
			FUNC2(&s->usbdev->dev,
				"kzalloc(sizeof(buff_t))==NULL\n");
			goto err;
		}
		b->s = s;
		b->purb = FUNC7(packets, GFP_KERNEL);
		if (!b->purb) {
			FUNC2(&s->usbdev->dev, "usb_alloc_urb == NULL\n");
			FUNC3 (b);
			goto err;
		}

		b->purb->transfer_buffer = FUNC4 (transfer_buffer_length, GFP_KERNEL);
		if (!b->purb->transfer_buffer) {
			FUNC3 (b->purb);
			FUNC3 (b);
			FUNC2(&s->usbdev->dev,
				"kmalloc(%d)==NULL\n", transfer_buffer_length);
			goto err;
		}

		b->purb->transfer_buffer_length = transfer_buffer_length;
		b->purb->number_of_packets = packets;
		b->purb->complete = dabusb_iso_complete;
		b->purb->context = b;
		b->purb->dev = s->usbdev;
		b->purb->pipe = pipe;
		b->purb->transfer_flags = URB_ISO_ASAP;

		for (i = 0; i < packets; i++) {
			b->purb->iso_frame_desc[i].offset = i * pipesize;
			b->purb->iso_frame_desc[i].length = pipesize;
		}

		transfer_len += transfer_buffer_length;
		FUNC6 (&b->buff_list, &s->free_buff_list);
	}
	s->got_mem = transfer_len;

	return 0;

	err:
	FUNC0 (s);
	return -ENOMEM;
}