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
struct TYPE_2__ {int /*<<< orphan*/  timer; scalar_t__ timer_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 TYPE_1__* devpriv ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(unsigned long arg)
{
	struct comedi_device *dev = (struct comedi_device *)arg;

	FUNC0(dev);

	if (devpriv->timer_running)
		FUNC1(&devpriv->timer, jiffies + FUNC2());
}