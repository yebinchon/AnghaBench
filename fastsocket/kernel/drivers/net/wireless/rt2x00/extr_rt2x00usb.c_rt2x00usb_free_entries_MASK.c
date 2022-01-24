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
struct rt2x00_dev {int /*<<< orphan*/  cap_flags; } ;
struct queue_entry_priv_usb_bcn {int /*<<< orphan*/  guardian_urb; int /*<<< orphan*/  urb; } ;
struct queue_entry_priv_usb {int /*<<< orphan*/  guardian_urb; int /*<<< orphan*/  urb; } ;
struct data_queue {unsigned int limit; scalar_t__ qid; TYPE_1__* entries; struct rt2x00_dev* rt2x00dev; } ;
struct TYPE_2__ {struct queue_entry_priv_usb_bcn* priv_data; } ;

/* Variables and functions */
 scalar_t__ QID_BEACON ; 
 int /*<<< orphan*/  REQUIRE_BEACON_GUARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct data_queue *queue)
{
	struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
	struct queue_entry_priv_usb *entry_priv;
	struct queue_entry_priv_usb_bcn *bcn_priv;
	unsigned int i;

	if (!queue->entries)
		return;

	for (i = 0; i < queue->limit; i++) {
		entry_priv = queue->entries[i].priv_data;
		FUNC2(entry_priv->urb);
		FUNC1(entry_priv->urb);
	}

	/*
	 * If this is not the beacon queue or
	 * no guardian byte was required for the beacon,
	 * then we are done.
	 */
	if (queue->qid != QID_BEACON ||
	    !FUNC0(REQUIRE_BEACON_GUARD, &rt2x00dev->cap_flags))
		return;

	for (i = 0; i < queue->limit; i++) {
		bcn_priv = queue->entries[i].priv_data;
		FUNC2(bcn_priv->guardian_urb);
		FUNC1(bcn_priv->guardian_urb);
	}
}