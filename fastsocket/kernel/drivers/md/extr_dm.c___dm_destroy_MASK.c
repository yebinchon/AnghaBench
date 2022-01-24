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
struct mapped_device {int /*<<< orphan*/  holders; int /*<<< orphan*/  flags; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_FREEING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINOR_ALLOCED ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  _minor_idr ; 
 int /*<<< orphan*/  _minor_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 struct dm_table* FUNC7 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC14 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC21(struct mapped_device *md, bool wait)
{
	struct dm_table *map;

	FUNC16();

	FUNC19(&_minor_lock);
	map = FUNC7(md);
	FUNC15(&_minor_idr, MINOR_ALLOCED, FUNC1(FUNC4(FUNC6(md))));
	FUNC18(DMF_FREEING, &md->flags);
	FUNC20(&_minor_lock);

	if (!FUNC8(md)) {
		FUNC12(map);
		FUNC11(map);
	}

	/*
	 * Rare, but there may be I/O requests still going to complete,
	 * for example.  Wait for all references to disappear.
	 * No one should increment the reference count of the mapped_device,
	 * after the mapped_device state becomes DMF_FREEING.
	 */
	if (wait)
		while (FUNC3(&md->holders))
			FUNC17(1);
	else if (FUNC3(&md->holders))
		FUNC0("%s: Forcibly removing mapped_device still in use! (%d users)",
		       FUNC5(md), FUNC3(&md->holders));

	FUNC9(md);
	FUNC13(map);
	FUNC10(FUNC2(md));
	FUNC14(md);
}