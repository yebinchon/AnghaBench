#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct urb {int number_of_packets; int actual_length; TYPE_4__* dev; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  status; void* transfer_buffer; TYPE_3__* context; } ;
typedef  TYPE_2__* pdabusb_t ;
typedef  TYPE_3__* pbuff_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {TYPE_2__* s; } ;
struct TYPE_7__ {scalar_t__ state; int overruns; int /*<<< orphan*/  wait; int /*<<< orphan*/  remove_pending; int /*<<< orphan*/  pending_io; } ;
struct TYPE_6__ {int actual_length; int offset; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  _DABUSB_ISOPIPE ; 
 scalar_t__ _stopped ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int FUNC5 (TYPE_4__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9 (struct urb *purb)
{
	pbuff_t b = purb->context;
	pdabusb_t s = b->s;
	int i;
	int len;
	int dst = 0;
	void *buf = purb->transfer_buffer;

	FUNC1("dabusb_iso_complete");

	// process if URB was not killed
	if (purb->status != -ENOENT) {
		unsigned int pipe = FUNC7 (purb->dev, _DABUSB_ISOPIPE);
		int pipesize = FUNC5 (purb->dev, pipe, FUNC6 (pipe));
		for (i = 0; i < purb->number_of_packets; i++)
			if (!purb->iso_frame_desc[i].status) {
				len = purb->iso_frame_desc[i].actual_length;
				if (len <= pipesize) {
					FUNC4 (buf + dst, buf + purb->iso_frame_desc[i].offset, len);
					dst += len;
				}
				else
					FUNC2(&purb->dev->dev,
						"dabusb_iso_complete: invalid len %d\n", len);
			}
			else
				FUNC3(&purb->dev->dev, "dabusb_iso_complete: corrupted packet status: %d\n", purb->iso_frame_desc[i].status);
		if (dst != purb->actual_length)
			FUNC2(&purb->dev->dev,
				"dst!=purb->actual_length:%d!=%d\n",
					dst, purb->actual_length);
	}

	if (FUNC0 (&s->pending_io) && !s->remove_pending && s->state != _stopped) {
		s->overruns++;
		FUNC2(&purb->dev->dev, "overrun (%d)\n", s->overruns);
	}
	FUNC8 (&s->wait);
}