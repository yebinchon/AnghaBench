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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ alpha_using_srm ; 
 scalar_t__ srmcons_output ; 

__attribute__((used)) static int
FUNC1(struct notifier_block *this, unsigned long event, void *ptr)
{
#if 1
	/* FIXME FIXME FIXME */
	/* If we are using SRM and serial console, just hard halt here. */
	if (alpha_using_srm && srmcons_output)
		FUNC0();
#endif
        return NOTIFY_DONE;
}