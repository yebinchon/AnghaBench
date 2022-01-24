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
struct seq_file {struct ap_data* private; } ;
struct ap_data {int bridged_unicast; int bridged_multicast; int max_inactivity; int bridge_packets; int nullfunc_ack; int autom_ap_wds; int tx_drop_nonassoc; TYPE_1__* local; } ;
struct TYPE_2__ {int auth_algs; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 

__attribute__((used)) static int FUNC1(struct seq_file *m, void *v)
{
	struct ap_data *ap = m->private;

	FUNC0(m, "BridgedUnicastFrames=%u\n", ap->bridged_unicast);
	FUNC0(m, "BridgedMulticastFrames=%u\n", ap->bridged_multicast);
	FUNC0(m, "max_inactivity=%u\n", ap->max_inactivity / HZ);
	FUNC0(m, "bridge_packets=%u\n", ap->bridge_packets);
	FUNC0(m, "nullfunc_ack=%u\n", ap->nullfunc_ack);
	FUNC0(m, "autom_ap_wds=%u\n", ap->autom_ap_wds);
	FUNC0(m, "auth_algs=%u\n", ap->local->auth_algs);
	FUNC0(m, "tx_drop_nonassoc=%u\n", ap->tx_drop_nonassoc);
	return 0;
}