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
struct hpsb_packet {unsigned int generation; int /*<<< orphan*/ * data; } ;
struct hpsb_host {int dummy; } ;
typedef  int /*<<< orphan*/  quadlet_t ;
typedef  int /*<<< orphan*/  nodeid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct hpsb_packet*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_packet*) ; 
 struct hpsb_packet* FUNC2 (struct hpsb_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hpsb_packet*) ; 
 int FUNC4 (struct hpsb_packet*) ; 

int FUNC5(struct hpsb_host *host, nodeid_t node, unsigned int generation,
	      u64 addr, int extcode, quadlet_t *data, quadlet_t arg)
{
	struct hpsb_packet *packet;
	int retval = 0;

	packet = FUNC2(host, node, addr, extcode, data, arg);
	if (!packet)
		return -ENOMEM;

	packet->generation = generation;
	retval = FUNC4(packet);
	if (retval < 0)
		goto hpsb_lock_fail;

	retval = FUNC3(packet);

	if (retval == 0)
		*data = packet->data[0];

hpsb_lock_fail:
	FUNC1(packet);
	FUNC0(packet);

	return retval;
}