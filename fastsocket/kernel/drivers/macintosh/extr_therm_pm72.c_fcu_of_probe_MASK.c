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
struct of_device_id {int dummy; } ;
struct of_device {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  state_detached ; 
 int /*<<< orphan*/  therm_pm72_driver ; 

__attribute__((used)) static int FUNC2(struct of_device* dev, const struct of_device_id *match)
{
	state = state_detached;

	/* Lookup the fans in the device tree */
	FUNC0(dev->node);

	/* Add the driver */
	return FUNC1(&therm_pm72_driver);
}