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
typedef  int /*<<< orphan*/  zero ;
typedef  int u16 ;
struct wl3501_card {int tx_buffer_cnt; int tx_buffer_head; } ;
struct wl3501_80211_tx_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  next ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wl3501_card*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wl3501_card*,int,int*,int) ; 

__attribute__((used)) static u16 FUNC2(struct wl3501_card *this, u16 len)
{
	u16 next, blk_cnt = 0, zero = 0;
	u16 full_len = sizeof(struct wl3501_80211_tx_hdr) + len;
	u16 ret = 0;

	if (full_len > this->tx_buffer_cnt * 254)
		goto out;
	ret = this->tx_buffer_head;
	while (full_len) {
		if (full_len < 254)
			full_len = 0;
		else
			full_len -= 254;
		FUNC0(this, this->tx_buffer_head, &next,
				    sizeof(next));
		if (!full_len)
			FUNC1(this, this->tx_buffer_head, &zero,
					  sizeof(zero));
		this->tx_buffer_head = next;
		blk_cnt++;
		/* if buffer is not enough */
		if (!next && full_len) {
			this->tx_buffer_head = ret;
			ret = 0;
			goto out;
		}
	}
	this->tx_buffer_cnt -= blk_cnt;
out:
	return ret;
}