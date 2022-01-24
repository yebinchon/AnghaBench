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
struct TYPE_3__ {int settle_time_valid; scalar_t__ settle_time; } ;
struct sym_hcb {TYPE_1__ s; } ;
struct TYPE_4__ {int settle_delay; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ sym_driver_setup ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*) ; 
 int sym_verbose ; 

void FUNC3(struct sym_hcb *np)
{
	FUNC1("%s: SCSI BUS has been reset.\n", FUNC2(np));
	np->s.settle_time = jiffies + sym_driver_setup.settle_delay * HZ;
	np->s.settle_time_valid = 1;
	if (sym_verbose >= 2)
		FUNC0("%s: command processing suspended for %d seconds\n",
			    FUNC2(np), sym_driver_setup.settle_delay);
}