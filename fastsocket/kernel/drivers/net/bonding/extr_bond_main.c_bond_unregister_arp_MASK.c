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
struct packet_type {scalar_t__ type; } ;
struct bonding {struct packet_type arp_mon_pt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct packet_type*) ; 

void FUNC1(struct bonding *bond)
{
	struct packet_type *pt = &bond->arp_mon_pt;

	FUNC0(pt);
	pt->type = 0;
}