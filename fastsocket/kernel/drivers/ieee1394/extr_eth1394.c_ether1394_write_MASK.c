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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct hpsb_host {int /*<<< orphan*/  id; } ;
struct eth1394_host_info {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  quadlet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int RCODE_ADDRESS_ERROR ; 
 int RCODE_COMPLETE ; 
 int /*<<< orphan*/  eth1394_highlevel ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,char*,size_t) ; 
 struct eth1394_host_info* FUNC2 (int /*<<< orphan*/ *,struct hpsb_host*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct hpsb_host *host, int srcid, int destid,
			   quadlet_t *data, u64 addr, size_t len, u16 flags)
{
	struct eth1394_host_info *hi;

	hi = FUNC2(&eth1394_highlevel, host);
	if (FUNC3(!hi)) {
		FUNC0(KERN_ERR, "No net device at fw-host%d\n",
				host->id);
		return RCODE_ADDRESS_ERROR;
	}

	if (FUNC1(hi->dev, srcid, destid, (char*)data, len))
		return RCODE_ADDRESS_ERROR;
	else
		return RCODE_COMPLETE;
}