#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ldc_packet {int dummy; } ;
struct ldc_channel {unsigned int rx_head; unsigned int rx_tail; scalar_t__ chan_state; struct ldc_packet* rx_base; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EINVAL ; 
 scalar_t__ LDC_CHANNEL_DOWN ; 
 scalar_t__ LDC_CHANNEL_RESETTING ; 
 unsigned int LDC_PACKET_SIZE ; 
 int FUNC0 (struct ldc_channel*,unsigned long) ; 
 int FUNC1 (struct ldc_channel*) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct ldc_packet*,unsigned int) ; 
 unsigned long FUNC3 (struct ldc_channel*,unsigned int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned int*,unsigned int*,scalar_t__*) ; 

__attribute__((used)) static int FUNC5(struct ldc_channel *lp, void *buf, unsigned int size)
{
	struct ldc_packet *p;
	unsigned long hv_err, new;
	int err;

	if (size < LDC_PACKET_SIZE)
		return -EINVAL;

	hv_err = FUNC4(lp->id,
					&lp->rx_head,
					&lp->rx_tail,
					&lp->chan_state);
	if (hv_err)
		return FUNC1(lp);

	if (lp->chan_state == LDC_CHANNEL_DOWN ||
	    lp->chan_state == LDC_CHANNEL_RESETTING)
		return -ECONNRESET;

	if (lp->rx_head == lp->rx_tail)
		return 0;

	p = lp->rx_base + (lp->rx_head / LDC_PACKET_SIZE);
	FUNC2(buf, p, LDC_PACKET_SIZE);

	new = FUNC3(lp, lp->rx_head);
	lp->rx_head = new;

	err = FUNC0(lp, new);
	if (err < 0)
		err = -ECONNRESET;
	else
		err = LDC_PACKET_SIZE;

	return err;
}