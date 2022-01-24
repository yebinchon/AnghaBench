#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zd_addr_t ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  completion; } ;
struct TYPE_5__ {TYPE_1__ read_regs; } ;
struct zd_usb {TYPE_2__ intr; scalar_t__ req_buf; } ;
struct usb_req_read_regs {void** addr; void* id; } ;
struct usb_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int EWOULDBLOCK ; 
 unsigned int USB_MAX_IOREAD16_COUNT ; 
 int /*<<< orphan*/  USB_REQ_READ_REGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct zd_usb*) ; 
 int FUNC6 (struct zd_usb*,int /*<<< orphan*/ *,struct usb_req_read_regs*,unsigned int,int*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct zd_usb*,struct usb_req_read_regs*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct zd_usb*) ; 
 unsigned long FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct usb_device*,struct usb_req_read_regs*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct zd_usb*) ; 
 TYPE_3__* FUNC15 (struct zd_usb*) ; 
 struct usb_device* FUNC16 (struct zd_usb*) ; 

int FUNC17(struct zd_usb *usb, u16 *values,
	             const zd_addr_t *addresses, unsigned int count)
{
	int r, i, req_len, actual_req_len, try_count = 0;
	struct usb_device *udev;
	struct usb_req_read_regs *req = NULL;
	unsigned long timeout;
	bool retry = false;

	if (count < 1) {
		FUNC4(FUNC14(usb), "error: count is zero\n");
		return -EINVAL;
	}
	if (count > USB_MAX_IOREAD16_COUNT) {
		FUNC4(FUNC14(usb),
			 "error: count %u exceeds possible max %u\n",
			 count, USB_MAX_IOREAD16_COUNT);
		return -EINVAL;
	}
	if (FUNC7()) {
		FUNC4(FUNC14(usb),
			 "error: io in atomic context not supported\n");
		return -EWOULDBLOCK;
	}
	if (!FUNC11(usb)) {
		FUNC4(FUNC14(usb),
			  "error: usb interrupt not enabled\n");
		return -EWOULDBLOCK;
	}

	FUNC2(FUNC9(&FUNC15(usb)->mutex));
	FUNC1(sizeof(struct usb_req_read_regs) + USB_MAX_IOREAD16_COUNT *
		     sizeof(__le16) > sizeof(usb->req_buf));
	FUNC0(sizeof(struct usb_req_read_regs) + count * sizeof(__le16) >
	       sizeof(usb->req_buf));

	req_len = sizeof(struct usb_req_read_regs) + count * sizeof(__le16);
	req = (void *)usb->req_buf;

	req->id = FUNC3(USB_REQ_READ_REGS);
	for (i = 0; i < count; i++)
		req->addr[i] = FUNC3((u16)addresses[i]);

retry_read:
	try_count++;
	udev = FUNC16(usb);
	FUNC10(usb, req, count);
	r = FUNC13(udev, req, req_len, &actual_req_len, 50 /*ms*/);
	if (r) {
		FUNC4(FUNC14(usb),
			"error in zd_ep_regs_out_msg(). Error number %d\n", r);
		goto error;
	}
	if (req_len != actual_req_len) {
		FUNC4(FUNC14(usb), "error in zd_ep_regs_out_msg()\n"
			" req_len %d != actual_req_len %d\n",
			req_len, actual_req_len);
		r = -EIO;
		goto error;
	}

	timeout = FUNC12(&usb->intr.read_regs.completion,
					      FUNC8(50));
	if (!timeout) {
		FUNC5(usb);
		FUNC4(FUNC14(usb), "read timed out\n");
		r = -ETIMEDOUT;
		goto error;
	}

	r = FUNC6(usb, values, req, count, &retry);
	if (retry && try_count < 20) {
		FUNC4(FUNC14(usb), "read retry, tries so far: %d\n",
				try_count);
		goto retry_read;
	}
error:
	return r;
}