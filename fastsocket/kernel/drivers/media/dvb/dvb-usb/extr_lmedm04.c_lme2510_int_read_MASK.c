#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lme2510_state {TYPE_2__* lme_urb; int /*<<< orphan*/ * buffer; } ;
struct dvb_usb_adapter {TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_5__ {int /*<<< orphan*/  udev; struct lme2510_state* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  lme2510_int_response ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct dvb_usb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_adapter *adap)
{
	struct lme2510_state *lme_int = adap->dev->priv;

	lme_int->lme_urb = FUNC1(0, GFP_ATOMIC);

	if (lme_int->lme_urb == NULL)
			return -ENOMEM;

	lme_int->buffer = FUNC2(adap->dev->udev, 5000, GFP_ATOMIC,
					&lme_int->lme_urb->transfer_dma);

	if (lme_int->buffer == NULL)
			return -ENOMEM;

	FUNC3(lme_int->lme_urb,
				adap->dev->udev,
				FUNC4(adap->dev->udev, 0xa),
				lme_int->buffer,
				4096,
				lme2510_int_response,
				adap,
				11);

	lme_int->lme_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	FUNC5(lme_int->lme_urb, GFP_ATOMIC);
	FUNC0("INT Interupt Service Started");

	return 0;
}