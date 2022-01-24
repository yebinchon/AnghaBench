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
struct ubi_device {int /*<<< orphan*/  lookuptbl; int /*<<< orphan*/  scrub; int /*<<< orphan*/  free; int /*<<< orphan*/  erroneous; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ubi_device *ubi)
{
	FUNC1("close the WL sub-system");
	FUNC0(ubi);
	FUNC3(ubi);
	FUNC4(&ubi->used);
	FUNC4(&ubi->erroneous);
	FUNC4(&ubi->free);
	FUNC4(&ubi->scrub);
	FUNC2(ubi->lookuptbl);
}