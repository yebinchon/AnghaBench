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
struct mirror {TYPE_1__* dev; int /*<<< orphan*/  ms; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DM_RAID1_READ_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 struct mirror* FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mirror*) ; 
 int /*<<< orphan*/  FUNC7 (struct mirror*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(unsigned long error, void *context)
{
	struct bio *bio = context;
	struct mirror *m;

	m = FUNC3(bio);
	FUNC5(bio, NULL);

	if (FUNC8(!error)) {
		FUNC2(bio, 0);
		return;
	}

	FUNC7(m, DM_RAID1_READ_ERROR);

	if (FUNC8(FUNC6(m)) || FUNC9(m->ms, bio)) {
		FUNC1("Read failure on mirror device %s.  "
			     "Trying alternative device.",
			     m->dev->name);
		FUNC10(m->ms, bio, FUNC4(bio));
		return;
	}

	FUNC0("Read failure on mirror device %s.  Failing I/O.",
		    m->dev->name);
	FUNC2(bio, -EIO);
}