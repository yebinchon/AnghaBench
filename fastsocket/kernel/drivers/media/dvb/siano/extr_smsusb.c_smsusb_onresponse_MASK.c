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
struct urb {scalar_t__ status; scalar_t__ actual_length; scalar_t__ context; } ;
struct smsusb_urb_t {TYPE_1__* cb; struct smsusb_device_t* dev; } ;
struct smsusb_device_t {scalar_t__ response_alignment; int /*<<< orphan*/  coredev; } ;
struct SmsMsgHdr_ST {scalar_t__ msgLength; int msgFlags; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ offset; scalar_t__ p; } ;

/* Variables and functions */
 scalar_t__ ESHUTDOWN ; 
 int MSG_HDR_FLAG_SPLIT_MSG ; 
 int /*<<< orphan*/  FUNC0 (char*,struct SmsMsgHdr_ST*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct SmsMsgHdr_ST*) ; 
 int /*<<< orphan*/  FUNC4 (struct smsusb_device_t*,struct smsusb_urb_t*) ; 

__attribute__((used)) static void FUNC5(struct urb *urb)
{
	struct smsusb_urb_t *surb = (struct smsusb_urb_t *) urb->context;
	struct smsusb_device_t *dev = surb->dev;

	if (urb->status == -ESHUTDOWN) {
		FUNC1("error, urb status %d (-ESHUTDOWN), %d bytes",
			urb->status, urb->actual_length);
		return;
	}

	if ((urb->actual_length > 0) && (urb->status == 0)) {
		struct SmsMsgHdr_ST *phdr = (struct SmsMsgHdr_ST *)surb->cb->p;

		FUNC3(phdr);
		if (urb->actual_length >= phdr->msgLength) {
			surb->cb->size = phdr->msgLength;

			if (dev->response_alignment &&
			    (phdr->msgFlags & MSG_HDR_FLAG_SPLIT_MSG)) {

				surb->cb->offset =
					dev->response_alignment +
					((phdr->msgFlags >> 8) & 3);

				/* sanity check */
				if (((int) phdr->msgLength +
				     surb->cb->offset) > urb->actual_length) {
					FUNC1("invalid response "
						"msglen %d offset %d "
						"size %d",
						phdr->msgLength,
						surb->cb->offset,
						urb->actual_length);
					goto exit_and_resubmit;
				}

				/* move buffer pointer and
				 * copy header to its new location */
				FUNC0((char *) phdr + surb->cb->offset,
				       phdr, sizeof(struct SmsMsgHdr_ST));
			} else
				surb->cb->offset = 0;

			FUNC2(dev->coredev, surb->cb);
			surb->cb = NULL;
		} else {
			FUNC1("invalid response "
				"msglen %d actual %d",
				phdr->msgLength, urb->actual_length);
		}
	} else
		FUNC1("error, urb status %d, %d bytes",
			urb->status, urb->actual_length);


exit_and_resubmit:
	FUNC4(dev, surb);
}