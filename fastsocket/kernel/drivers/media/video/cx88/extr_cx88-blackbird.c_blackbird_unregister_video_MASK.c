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
struct cx8802_dev {int /*<<< orphan*/ * mpeg_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cx8802_dev *dev)
{
	if (dev->mpeg_dev) {
		if (FUNC1(dev->mpeg_dev))
			FUNC2(dev->mpeg_dev);
		else
			FUNC0(dev->mpeg_dev);
		dev->mpeg_dev = NULL;
	}
}