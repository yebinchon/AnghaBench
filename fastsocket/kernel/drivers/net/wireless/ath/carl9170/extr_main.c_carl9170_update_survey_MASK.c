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
struct TYPE_2__ {scalar_t__ hw_counters; } ;
struct ar9170 {int /*<<< orphan*/  tally; TYPE_1__ fw; } ;

/* Variables and functions */
 int FUNC0 (struct ar9170*) ; 
 int FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ar9170 *ar, bool flush, bool noise)
{
	int err;

	if (noise) {
		err = FUNC1(ar);
		if (err)
			return err;
	}

	if (ar->fw.hw_counters) {
		err = FUNC0(ar);
		if (err)
			return err;
	}

	if (flush)
		FUNC2(&ar->tally, 0, sizeof(ar->tally));

	return 0;
}