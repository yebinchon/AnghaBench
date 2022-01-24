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
struct usb_cardstate {int bulk_out_endpointAddr; int busy; int /*<<< orphan*/  bulk_out_urb; int /*<<< orphan*/  udev; int /*<<< orphan*/  bulk_out_size; } ;
struct cmdbuf_t {scalar_t__ len; scalar_t__ offset; scalar_t__ buf; scalar_t__ wake_tasklet; int /*<<< orphan*/ * prev; struct cmdbuf_t* next; } ;
struct TYPE_2__ {struct usb_cardstate* usb; } ;
struct cardstate {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; scalar_t__ connected; int /*<<< orphan*/  cmdlock; scalar_t__ curlen; int /*<<< orphan*/ * lastcmdbuf; struct cmdbuf_t* cmdbuf; int /*<<< orphan*/  cmdbytes; TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_OUTPUT ; 
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  gigaset_write_bulk_callback ; 
 int /*<<< orphan*/  FUNC2 (struct cmdbuf_t*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct cardstate*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct cardstate *cs, struct cmdbuf_t *cb)
{
	struct cmdbuf_t *tcb;
	unsigned long flags;
	int count;
	int status = -ENOENT; // FIXME
	struct usb_cardstate *ucs = cs->hw.usb;

	do {
		if (!cb->len) {
			tcb = cb;

			FUNC4(&cs->cmdlock, flags);
			cs->cmdbytes -= cs->curlen;
			FUNC1(DEBUG_OUTPUT, "send_cb: sent %u bytes, %u left",
				cs->curlen, cs->cmdbytes);
			cs->cmdbuf = cb = cb->next;
			if (cb) {
				cb->prev = NULL;
				cs->curlen = cb->len;
			} else {
				cs->lastcmdbuf = NULL;
				cs->curlen = 0;
			}
			FUNC5(&cs->cmdlock, flags);

			if (tcb->wake_tasklet)
				FUNC6(tcb->wake_tasklet);
			FUNC2(tcb);
		}
		if (cb) {
			count = FUNC3(cb->len, ucs->bulk_out_size);
			FUNC1(DEBUG_OUTPUT, "send_cb: send %d bytes", count);

			FUNC7(ucs->bulk_out_urb, ucs->udev,
					  FUNC8(ucs->udev,
					     ucs->bulk_out_endpointAddr & 0x0f),
					  cb->buf + cb->offset, count,
					  gigaset_write_bulk_callback, cs);

			cb->offset += count;
			cb->len -= count;
			ucs->busy = 1;

			FUNC4(&cs->lock, flags);
			status = cs->connected ? FUNC9(ucs->bulk_out_urb, GFP_ATOMIC) : -ENODEV;
			FUNC5(&cs->lock, flags);

			if (status) {
				ucs->busy = 0;
				FUNC0(cs->dev,
					"could not submit urb (error %d)\n",
					-status);
				cb->len = 0; /* skip urb => remove cb+wakeup
						in next loop cycle */
			}
		}
	} while (cb && status); /* next command on error */

	return status;
}