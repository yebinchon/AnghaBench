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
struct skb_frame_desc {int /*<<< orphan*/  desc_len; int /*<<< orphan*/  desc; } ;
struct rt2x00_dev {TYPE_2__* ops; struct data_queue* rx; } ;
struct queue_entry_priv_mmio {int /*<<< orphan*/  desc; } ;
struct queue_entry {TYPE_3__* queue; int /*<<< orphan*/  skb; struct queue_entry_priv_mmio* priv_data; } ;
struct data_queue {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  desc_size; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {scalar_t__ (* get_entry_state ) (struct queue_entry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  Q_INDEX ; 
 struct skb_frame_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct queue_entry*,int /*<<< orphan*/ ) ; 
 struct queue_entry* FUNC4 (struct data_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct queue_entry*) ; 

bool FUNC6(struct rt2x00_dev *rt2x00dev)
{
	struct data_queue *queue = rt2x00dev->rx;
	struct queue_entry *entry;
	struct queue_entry_priv_mmio *entry_priv;
	struct skb_frame_desc *skbdesc;
	int max_rx = 16;

	while (--max_rx) {
		entry = FUNC4(queue, Q_INDEX);
		entry_priv = entry->priv_data;

		if (rt2x00dev->ops->lib->get_entry_state(entry))
			break;

		/*
		 * Fill in desc fields of the skb descriptor
		 */
		skbdesc = FUNC0(entry->skb);
		skbdesc->desc = entry_priv->desc;
		skbdesc->desc_len = entry->queue->desc_size;

		/*
		 * DMA is already done, notify rt2x00lib that
		 * it finished successfully.
		 */
		FUNC2(entry);
		FUNC1(entry);

		/*
		 * Send the frame to rt2x00lib for further processing.
		 */
		FUNC3(entry, GFP_ATOMIC);
	}

	return !max_rx;
}