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
typedef  int /*<<< orphan*/  u32 ;
struct queue_entry_priv_mmio {int /*<<< orphan*/  desc; } ;
struct queue_entry {TYPE_1__* queue; struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_2__ {scalar_t__ qid; } ;

/* Variables and functions */
 scalar_t__ QID_RX ; 
 int /*<<< orphan*/  RXD_W0_OWNER_NIC ; 
 int /*<<< orphan*/  TXD_W0_OWNER_NIC ; 
 int /*<<< orphan*/  TXD_W0_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct queue_entry *entry)
{
	struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
	u32 word;

	if (entry->queue->qid == QID_RX) {
		FUNC0(entry_priv->desc, 0, &word);

		return FUNC1(word, RXD_W0_OWNER_NIC);
	} else {
		FUNC0(entry_priv->desc, 0, &word);

		return (FUNC1(word, TXD_W0_OWNER_NIC) ||
		        FUNC1(word, TXD_W0_VALID));
	}
}