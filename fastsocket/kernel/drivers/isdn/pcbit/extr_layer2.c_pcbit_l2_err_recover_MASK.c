#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ expires; } ;
struct pcbit_dev {int w_busy; int r_busy; int rcv_seq; int send_seq; int unack_seq; int free; scalar_t__ sh_mem; scalar_t__ readptr; scalar_t__ writeptr; int /*<<< orphan*/  l2_state; struct frame_buf* write_queue; struct frame_buf* read_frame; TYPE_1__ error_recover_timer; } ;
struct frame_buf {scalar_t__ copied; scalar_t__ skb; struct frame_buf* next; } ;

/* Variables and functions */
 scalar_t__ BANK2 ; 
 scalar_t__ BANK4 ; 
 scalar_t__ ERRTIME ; 
 int /*<<< orphan*/  L2_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct frame_buf*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct pcbit_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC8(unsigned long data)
{

	struct pcbit_dev *dev;
	struct frame_buf *frame;

	dev = (struct pcbit_dev *) data;

	FUNC1(&dev->error_recover_timer);
	if (dev->w_busy || dev->r_busy) {
		FUNC3(&dev->error_recover_timer);
		dev->error_recover_timer.expires = jiffies + ERRTIME;
		FUNC0(&dev->error_recover_timer);
		return;
	}
	dev->w_busy = dev->r_busy = 1;

	if (dev->read_frame) {
		FUNC5(dev->read_frame->skb);
		FUNC4(dev->read_frame);
		dev->read_frame = NULL;
	}
	if (dev->write_queue) {
		frame = dev->write_queue;
#ifdef FREE_ON_ERROR
		dev->write_queue = dev->write_queue->next;

		if (frame->skb) {
			dev_kfree_skb(frame->skb);
		}
		kfree(frame);
#else
		frame->copied = 0;
#endif
	}
	dev->rcv_seq = dev->send_seq = dev->unack_seq = 0;
	dev->free = 511;
	dev->l2_state = L2_ERROR;

	/* this is an hack... */
	FUNC6(dev);

	dev->writeptr = dev->sh_mem;
	dev->readptr = dev->sh_mem + BANK2;

	FUNC7((0x80U | ((dev->rcv_seq & 0x07) << 3) | (dev->send_seq & 0x07)),
	       dev->sh_mem + BANK4);
	dev->w_busy = dev->r_busy = 0;

}