#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct l2t_entry {scalar_t__ state; int vlan; int /*<<< orphan*/  lock; TYPE_2__* neigh; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lport; int /*<<< orphan*/  dmac; int /*<<< orphan*/  idx; scalar_t__ v6; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 scalar_t__ L2T_STATE_SWITCHING ; 
 void* SEQ_START_TOKEN ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2t_entry*) ; 

__attribute__((used)) static int FUNC8(struct seq_file *seq, void *v)
{
	if (v == SEQ_START_TOKEN)
		FUNC3(seq, " Idx IP address                "
			 "Ethernet address  VLAN/P LP State Users Port\n");
	else {
		char ip[60];
		struct l2t_entry *e = v;

		FUNC4(&e->lock);
		if (e->state == L2T_STATE_SWITCHING)
			ip[0] = '\0';
		else
			FUNC6(ip, e->v6 ? "%pI6c" : "%pI4", e->addr);
		FUNC2(seq, "%4u %-25s %17pM %4d %u %2u   %c   %5u %s\n",
			   e->idx, ip, e->dmac,
			   e->vlan & VLAN_VID_MASK, FUNC7(e), e->lport,
			   FUNC1(e), FUNC0(&e->refcnt),
			   e->neigh ? e->neigh->dev->name : "");
		FUNC5(&e->lock);
	}
	return 0;
}