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
struct ene_device {int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct ene_device *dev = (struct ene_device *)data;
	unsigned long flags;

	FUNC1(&dev->hw_lock, flags);
	FUNC0(dev);
	FUNC2(&dev->hw_lock, flags);
}