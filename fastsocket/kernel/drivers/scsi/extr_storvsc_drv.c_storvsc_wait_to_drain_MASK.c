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
struct storvsc_device {int drain_notify; int /*<<< orphan*/  num_outstanding_req; int /*<<< orphan*/  waiting_to_drain; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct storvsc_device *dev)
{
	dev->drain_notify = true;
	FUNC1(dev->waiting_to_drain,
		   FUNC0(&dev->num_outstanding_req) == 0);
	dev->drain_notify = false;
}