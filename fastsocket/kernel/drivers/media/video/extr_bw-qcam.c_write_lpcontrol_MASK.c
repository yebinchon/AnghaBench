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
struct qcam_device {int /*<<< orphan*/  pport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct qcam_device *q, int d)
{
	if (d & 0x20) {
		/* Set bidirectional mode to reverse (data in) */
		FUNC1(q->pport);
	} else {
		/* Set bidirectional mode to forward (data out) */
		FUNC0(q->pport);
	}

	/* Now issue the regular port command, but strip out the
	 * direction flag */
	d &= ~0x20;
	FUNC2(q->pport, d);
}