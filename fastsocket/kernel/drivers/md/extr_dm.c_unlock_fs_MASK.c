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
struct mapped_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * frozen_sb; int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mapped_device *md)
{
	if (!FUNC1(DMF_FROZEN, &md->flags))
		return;

	FUNC2(md->bdev, md->frozen_sb);
	md->frozen_sb = NULL;
	FUNC0(DMF_FROZEN, &md->flags);
}