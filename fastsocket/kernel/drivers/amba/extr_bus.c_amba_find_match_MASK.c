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
struct find_data {int mask; int id; scalar_t__ parent; struct amba_device* dev; scalar_t__ busid; } ;
struct device {scalar_t__ parent; } ;
struct amba_device {int periphid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct amba_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct find_data *d = data;
	struct amba_device *pcdev = FUNC3(dev);
	int r;

	r = (pcdev->periphid & d->mask) == d->id;
	if (d->parent)
		r &= d->parent == dev->parent;
	if (d->busid)
		r &= FUNC2(FUNC0(dev), d->busid) == 0;

	if (r) {
		FUNC1(dev);
		d->dev = pcdev;
	}

	return r;
}