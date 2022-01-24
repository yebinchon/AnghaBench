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
struct loop_device {int /*<<< orphan*/  lo_lock; int /*<<< orphan*/  lo_bio_list; int /*<<< orphan*/  lo_event; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 () ; 
 struct bio* FUNC3 (struct loop_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct loop_device*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(void *data)
{
	struct loop_device *lo = data;
	struct bio *bio;

	FUNC5(current, -20);

	while (!FUNC2() || !FUNC1(&lo->lo_bio_list)) {

		FUNC8(lo->lo_event,
				!FUNC1(&lo->lo_bio_list) ||
				FUNC2());

		if (FUNC1(&lo->lo_bio_list))
			continue;
		FUNC6(&lo->lo_lock);
		bio = FUNC3(lo);
		FUNC7(&lo->lo_lock);

		FUNC0(!bio);
		FUNC4(lo, bio);
	}

	return 0;
}