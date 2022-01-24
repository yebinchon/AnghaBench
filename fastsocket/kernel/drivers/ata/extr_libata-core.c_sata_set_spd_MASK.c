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
typedef  int /*<<< orphan*/  u32 ;
struct ata_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCR_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct ata_link*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ata_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ata_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct ata_link *link)
{
	u32 scontrol;
	int rc;

	if ((rc = FUNC1(link, SCR_CONTROL, &scontrol)))
		return rc;

	if (!FUNC0(link, &scontrol))
		return 0;

	if ((rc = FUNC2(link, SCR_CONTROL, scontrol)))
		return rc;

	return 1;
}