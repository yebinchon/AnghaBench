#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int present; int /*<<< orphan*/  port_flags; } ;
typedef  TYPE_1__ ide_hwif_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_PFLAG_PROBING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(ide_hwif_t *hwif)
{
	int rc;

	FUNC2(hwif);
	FUNC3(hwif);

	hwif->port_flags |= IDE_PFLAG_PROBING;

	FUNC4(hwif);

	rc = FUNC7(hwif);

	hwif->port_flags &= ~IDE_PFLAG_PROBING;

	if (rc < 0)
		return;

	hwif->present = 1;

	FUNC6(hwif);
	FUNC5(hwif);
	FUNC1(hwif);
	FUNC0(hwif);
	FUNC8(hwif);
}