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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ layout; } ;

/* Variables and functions */
 scalar_t__ LAYOUT_4020 ; 
 TYPE_1__* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	if (FUNC0(dev)->layout == LAYOUT_4020) {
		FUNC2(dev);
	} else
		FUNC1(dev);
}