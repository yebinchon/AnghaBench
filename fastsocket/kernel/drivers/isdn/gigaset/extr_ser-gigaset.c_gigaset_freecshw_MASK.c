#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* ser; } ;
struct cardstate {TYPE_1__ hw; int /*<<< orphan*/  write_tasklet; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cardstate *cs)
{
	FUNC3(&cs->write_tasklet);
	if (!cs->hw.ser)
		return;
	FUNC0(&cs->hw.ser->dev.dev, NULL);
	FUNC2(&cs->hw.ser->dev);
	FUNC1(cs->hw.ser);
	cs->hw.ser = NULL;
}