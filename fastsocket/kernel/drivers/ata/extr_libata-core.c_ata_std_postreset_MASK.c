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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SCR_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct ata_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct ata_link *link, unsigned int *classes)
{
	u32 serror;

	FUNC0("ENTER\n");

	/* reset complete, clear SError */
	if (!FUNC2(link, SCR_ERROR, &serror))
		FUNC3(link, SCR_ERROR, serror);

	/* print link status */
	FUNC1(link);

	FUNC0("EXIT\n");
}