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
struct gendisk {int dummy; } ;
struct dm_table {int /*<<< orphan*/  md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*) ; 
 scalar_t__ FUNC2 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC3 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct gendisk* FUNC5 (int /*<<< orphan*/ ) ; 
 struct gendisk* FUNC6 (struct dm_table*,int) ; 

__attribute__((used)) static void FUNC7(struct dm_table *t)
{
	struct gendisk *template_disk = NULL;

	if (!FUNC1(FUNC5(t->md)))
		return;

	template_disk = FUNC6(t, true);
	if (template_disk)
		FUNC3(FUNC5(t->md),
				       FUNC1(template_disk));
	else if (FUNC2(FUNC5(t->md)))
		FUNC0("%s: device no longer has a valid integrity profile",
		       FUNC4(t->md));
	else
		FUNC0("%s: unable to establish an integrity profile",
		       FUNC4(t->md));
}