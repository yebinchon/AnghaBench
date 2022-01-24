#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int actual_length; int* transfer_buffer; scalar_t__ status; struct mcs_cb* context; } ;
struct mcs_cb {int speed; int /*<<< orphan*/  rx_time; int /*<<< orphan*/  rx_buff; TYPE_1__* netdev; } ;
typedef  int __u8 ;
struct TYPE_3__ {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mcs_cb*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mcs_cb*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct urb *urb)
{
	__u8 *bytes;
	struct mcs_cb *mcs = urb->context;
	int i;
	int ret;

	if (!FUNC4(mcs->netdev))
		return;

	if (urb->status)
		return;

	if (urb->actual_length > 0) {
		bytes = urb->transfer_buffer;

		/* MCS returns frames without BOF and EOF
		 * I assume it returns whole frames.
		 */
		/* SIR speed */
		if(mcs->speed < 576000) {
			FUNC0(mcs->netdev, &mcs->netdev->stats,
				  &mcs->rx_buff, 0xc0);

			for (i = 0; i < urb->actual_length; i++)
				FUNC0(mcs->netdev, &mcs->netdev->stats,
					  &mcs->rx_buff, bytes[i]);

			FUNC0(mcs->netdev, &mcs->netdev->stats,
				  &mcs->rx_buff, 0xc1);
		}
		/* MIR speed */
		else if(mcs->speed == 576000 || mcs->speed == 1152000) {
			FUNC3(mcs, urb->transfer_buffer,
				urb->actual_length);
		}
		/* FIR speed */
		else {
			FUNC2(mcs, urb->transfer_buffer,
				urb->actual_length);
		}
		FUNC1(&mcs->rx_time);
	}

	ret = FUNC5(urb, GFP_ATOMIC);
}