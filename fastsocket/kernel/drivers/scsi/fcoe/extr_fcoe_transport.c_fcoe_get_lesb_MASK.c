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
struct net_device {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_els_lesb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,struct fc_els_lesb*,struct net_device*) ; 
 struct net_device* FUNC1 (struct fc_lport*) ; 

void FUNC2(struct fc_lport *lport,
			 struct fc_els_lesb *fc_lesb)
{
	struct net_device *netdev = FUNC1(lport);

	FUNC0(lport, fc_lesb, netdev);
}