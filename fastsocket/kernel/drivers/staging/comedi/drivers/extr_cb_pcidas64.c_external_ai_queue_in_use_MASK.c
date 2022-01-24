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
struct comedi_device {TYPE_2__* read_subdev; } ;
struct TYPE_6__ {scalar_t__ layout; } ;
struct TYPE_5__ {TYPE_1__* async; scalar_t__ busy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 scalar_t__ LAYOUT_4020 ; 
 TYPE_3__* FUNC0 (struct comedi_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct comedi_device *dev)
{
	if (dev->read_subdev->busy)
		return 0;
	if (FUNC0(dev)->layout == LAYOUT_4020)
		return 0;
	else if (FUNC1(&dev->read_subdev->async->cmd))
		return 0;
	return 1;
}