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
typedef  int u16 ;
struct hostap_tx_callback_info {void (* func ) (struct sk_buff*,int,void*) ;int idx; struct hostap_tx_callback_info* next; void* data; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; struct hostap_tx_callback_info* tx_callback; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hostap_tx_callback_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

u16 FUNC3(local_info_t *local,
				void (*func)(struct sk_buff *, int ok, void *),
				void *data)
{
	unsigned long flags;
	struct hostap_tx_callback_info *entry;

	entry = FUNC0(sizeof(*entry), GFP_KERNEL);
	if (entry == NULL)
		return 0;

	entry->func = func;
	entry->data = data;

	FUNC1(&local->lock, flags);
	entry->idx = local->tx_callback ? local->tx_callback->idx + 1 : 1;
	entry->next = local->tx_callback;
	local->tx_callback = entry;
	FUNC2(&local->lock, flags);

	return entry->idx;
}