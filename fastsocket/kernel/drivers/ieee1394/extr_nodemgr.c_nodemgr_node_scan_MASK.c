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
struct selfid {int /*<<< orphan*/  link_active; scalar_t__ extended; } ;
struct hpsb_host {int selfid_count; scalar_t__ topology_map; } ;
typedef  int /*<<< orphan*/  nodeid_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOCAL_BUS ; 
 int /*<<< orphan*/  FUNC0 (struct hpsb_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct hpsb_host *host, int generation)
{
	int count;
	struct selfid *sid = (struct selfid *)host->topology_map;
	nodeid_t nodeid = LOCAL_BUS;

	/* Scan each node on the bus */
	for (count = host->selfid_count; count; count--, sid++) {
		if (sid->extended)
			continue;

		if (!sid->link_active) {
			nodeid++;
			continue;
		}
		FUNC0(host, nodeid++, generation);
	}
}