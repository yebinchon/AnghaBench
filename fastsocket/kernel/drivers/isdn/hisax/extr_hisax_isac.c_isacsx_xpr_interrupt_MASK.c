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
struct isac {scalar_t__ tx_cnt; TYPE_1__* tx_skb; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (struct isac*,int,int /*<<< orphan*/ *) ; 
 int PH_DATA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct isac*) ; 

__attribute__((used)) static inline void FUNC3(struct isac *isac)
{
	if (!isac->tx_skb)
		return;

	if (isac->tx_skb->len > 0) {
		FUNC2(isac);
		return;
	}
	FUNC1(isac->tx_skb);
	isac->tx_skb = NULL;
	isac->tx_cnt = 0;
	FUNC0(isac, PH_DATA | CONFIRM, NULL);
}