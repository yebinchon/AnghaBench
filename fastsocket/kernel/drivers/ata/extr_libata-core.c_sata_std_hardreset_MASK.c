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
struct ata_link {int /*<<< orphan*/  eh_context; } ;

/* Variables and functions */
 int EAGAIN ; 
 unsigned long* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ata_link*,unsigned long const*,unsigned long,int*,int /*<<< orphan*/ *) ; 

int FUNC2(struct ata_link *link, unsigned int *class,
		       unsigned long deadline)
{
	const unsigned long *timing = FUNC0(&link->eh_context);
	bool online;
	int rc;

	/* do hardreset */
	rc = FUNC1(link, timing, deadline, &online, NULL);
	return online ? -EAGAIN : rc;
}