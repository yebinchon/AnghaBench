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
struct ll_struct {int rx_count; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  rx_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HCILL_W4_DATA ; 
 int /*<<< orphan*/  HCILL_W4_PACKET_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(struct ll_struct *ll, int len)
{
	register int room = FUNC4(ll->rx_skb);

	FUNC0("len %d room %d", len, room);

	if (!len) {
		FUNC2(ll->rx_skb);
	} else if (len > room) {
		FUNC1("Data length is too large");
		FUNC3(ll->rx_skb);
	} else {
		ll->rx_state = HCILL_W4_DATA;
		ll->rx_count = len;
		return len;
	}

	ll->rx_state = HCILL_W4_PACKET_TYPE;
	ll->rx_skb   = NULL;
	ll->rx_count = 0;

	return 0;
}