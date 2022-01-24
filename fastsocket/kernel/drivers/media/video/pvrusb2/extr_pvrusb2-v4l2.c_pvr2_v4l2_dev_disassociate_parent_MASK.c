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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/ * parent; } ;
struct pvr2_v4l2_dev {TYPE_1__ devbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPM_ORDER_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct pvr2_v4l2_dev *dip)
{
	if (!dip) return;
	if (!dip->devbase.parent) return;
	dip->devbase.parent = NULL;
	FUNC0(&dip->devbase.dev, NULL, DPM_ORDER_NONE);
}