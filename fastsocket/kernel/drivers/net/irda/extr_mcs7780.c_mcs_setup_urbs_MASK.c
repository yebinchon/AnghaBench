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
struct mcs_cb {int /*<<< orphan*/ * rx_urb; void* tx_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct mcs_cb *mcs)
{
	mcs->rx_urb = NULL;

	mcs->tx_urb = FUNC0(0, GFP_KERNEL);
	if (!mcs->tx_urb)
		return 0;

	mcs->rx_urb = FUNC0(0, GFP_KERNEL);
	if (!mcs->rx_urb)
		return 0;

	return 1;
}