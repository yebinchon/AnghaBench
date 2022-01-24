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
struct hpsb_packet {int /*<<< orphan*/  generation; } ;
struct hpsb_host {int dummy; } ;
typedef  int quadlet_t ;

/* Variables and functions */
 int ALL_NODES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int PHYPACKET_GAPCOUNT_SHIFT ; 
 int PHYPACKET_PHYCONFIG_R ; 
 int PHYPACKET_PHYCONFIG_T ; 
 int PHYPACKET_PORT_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct hpsb_packet*) ; 
 struct hpsb_packet* FUNC3 (struct hpsb_host*,int) ; 
 int FUNC4 (struct hpsb_packet*) ; 

int FUNC5(struct hpsb_host *host, int rootid, int gapcnt)
{
	struct hpsb_packet *packet;
	quadlet_t d = 0;
	int retval = 0;

	if (rootid >= ALL_NODES || rootid < -1 || gapcnt > 0x3f || gapcnt < -1 ||
	   (rootid == -1 && gapcnt == -1)) {
		FUNC0("Invalid Parameter: rootid = %d   gapcnt = %d",
			   rootid, gapcnt);
		return -EINVAL;
	}

	if (rootid != -1)
		d |= PHYPACKET_PHYCONFIG_R | rootid << PHYPACKET_PORT_SHIFT;
	if (gapcnt != -1)
		d |= PHYPACKET_PHYCONFIG_T | gapcnt << PHYPACKET_GAPCOUNT_SHIFT;

	packet = FUNC3(host, d);
	if (!packet)
		return -ENOMEM;

	packet->generation = FUNC1(host);
	retval = FUNC4(packet);
	FUNC2(packet);

	return retval;
}