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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int /*<<< orphan*/  addr_len; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  ha; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int NUD_VALID ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct neighbour*) ; 

__attribute__((used)) static int FUNC3(unsigned char *haddr, u32 paddr,
		     struct net_device *dev)
{
	struct neighbour *neighbor_entry;
	int ret = 0;

	neighbor_entry = FUNC1(&arp_tbl, &paddr, dev);

	if (neighbor_entry != NULL) {
		neighbor_entry->used = jiffies;
		if (neighbor_entry->nud_state & NUD_VALID) {
			FUNC0(haddr, neighbor_entry->ha, dev->addr_len);
			ret = 1;
		}
		FUNC2(neighbor_entry);
	}
	return ret;
}