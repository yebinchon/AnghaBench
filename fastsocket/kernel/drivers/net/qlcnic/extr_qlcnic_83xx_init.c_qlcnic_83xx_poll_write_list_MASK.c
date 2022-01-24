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
struct qlcnic_adapter {int dummy; } ;
struct qlc_83xx_quad_entry {int /*<<< orphan*/  ar_addr; int /*<<< orphan*/  ar_value; int /*<<< orphan*/  dr_value; int /*<<< orphan*/  dr_addr; } ;
struct qlc_83xx_poll {int /*<<< orphan*/  status; int /*<<< orphan*/  mask; } ;
struct qlc_83xx_entry_hdr {int count; scalar_t__ delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qlcnic_adapter *p_dev,
					struct qlc_83xx_entry_hdr *p_hdr)
{
	int i;
	long delay;
	struct qlc_83xx_quad_entry *entry;
	struct qlc_83xx_poll *poll;

	poll = (struct qlc_83xx_poll *)((char *)p_hdr +
					sizeof(struct qlc_83xx_entry_hdr));
	entry = (struct qlc_83xx_quad_entry *)((char *)poll +
					       sizeof(struct qlc_83xx_poll));
	delay = (long)p_hdr->delay;

	for (i = 0; i < p_hdr->count; i++, entry++) {
		FUNC1(p_dev, entry->dr_addr,
					     entry->dr_value);
		FUNC1(p_dev, entry->ar_addr,
					     entry->ar_value);
		if (delay)
			FUNC0(p_dev, entry->ar_addr, delay,
					     poll->mask, poll->status);
	}
}