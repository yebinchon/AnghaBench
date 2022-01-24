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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int length; int /*<<< orphan*/  completion; int /*<<< orphan*/  req_count; int /*<<< orphan*/  req; int /*<<< orphan*/ * buffer; } ;
struct zd_usb_interrupt {int /*<<< orphan*/  read_regs_enabled; int /*<<< orphan*/  lock; TYPE_1__ read_regs; scalar_t__ read_regs_int_overridden; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct zd_mac {int /*<<< orphan*/  process_intr; int /*<<< orphan*/  lock; int /*<<< orphan*/  intr_buffer; } ;
struct urb {int actual_length; int /*<<< orphan*/  transfer_buffer; struct zd_usb* context; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ CR_INTERRUPT ; 
 int USB_MAX_EP_INT_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct zd_mac* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct zd_usb*) ; 

__attribute__((used)) static inline void FUNC14(struct urb *urb)
{
	struct zd_usb *usb = urb->context;
	struct zd_usb_interrupt *intr = &usb->intr;
	int len;
	u16 int_num;

	FUNC0(FUNC6());
	FUNC10(&intr->lock);

	int_num = FUNC7(*(__le16 *)(urb->transfer_buffer+2));
	if (int_num == CR_INTERRUPT) {
		struct zd_mac *mac = FUNC12(FUNC13(urb->context));
		FUNC10(&mac->lock);
		FUNC8(&mac->intr_buffer, urb->transfer_buffer,
				USB_MAX_EP_INT_BUFFER);
		FUNC11(&mac->lock);
		FUNC9(&mac->process_intr);
	} else if (FUNC1(&intr->read_regs_enabled)) {
		len = urb->actual_length;
		intr->read_regs.length = urb->actual_length;
		if (len > sizeof(intr->read_regs.buffer))
			len = sizeof(intr->read_regs.buffer);

		FUNC8(intr->read_regs.buffer, urb->transfer_buffer, len);

		/* Sometimes USB_INT_ID_REGS is not overridden, but comes after
		 * USB_INT_ID_RETRY_FAILED. Read-reg retry then gets this
		 * delayed USB_INT_ID_REGS, but leaves USB_INT_ID_REGS of
		 * retry unhandled. Next read-reg command then might catch
		 * this wrong USB_INT_ID_REGS. Fix by ignoring wrong reads.
		 */
		if (!FUNC3(usb, intr->read_regs.req,
						intr->read_regs.req_count))
			goto out;

		FUNC2(&intr->read_regs_enabled, 0);
		intr->read_regs_int_overridden = 0;
		FUNC4(&intr->read_regs.completion);

		goto out;
	}

out:
	FUNC11(&intr->lock);

	/* CR_INTERRUPT might override read_reg too. */
	if (int_num == CR_INTERRUPT && FUNC1(&intr->read_regs_enabled))
		FUNC5(urb);
}