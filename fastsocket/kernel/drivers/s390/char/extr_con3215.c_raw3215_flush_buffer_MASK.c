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
struct raw3215_info {scalar_t__ count; int /*<<< orphan*/  cdev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RAW3215_FLUSHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct raw3215_info *raw)
{
	unsigned long flags;

	FUNC2(FUNC0(raw->cdev), flags);
	if (raw->count > 0) {
		raw->flags |= RAW3215_FLUSHING;
		FUNC1(raw);
		raw->flags &= ~RAW3215_FLUSHING;
	}
	FUNC3(FUNC0(raw->cdev), flags);
}