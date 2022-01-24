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
struct TYPE_2__ {int /*<<< orphan*/  (* fcp_cleanup ) (struct fc_lport*) ;} ;
struct fc_lport {TYPE_1__ tt; scalar_t__ link_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 

void FUNC2(struct fc_lport *lport)
{
	if (lport->link_up) {
		lport->link_up = 0;
		FUNC0(lport);
		lport->tt.fcp_cleanup(lport);
	}
}