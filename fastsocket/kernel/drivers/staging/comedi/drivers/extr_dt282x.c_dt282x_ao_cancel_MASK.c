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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ supcsr; scalar_t__ dacsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT2821_DACINIT ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	FUNC0(dev);

	devpriv->dacsr = 0;
	FUNC1(0);

	devpriv->supcsr = 0;
	FUNC2(DT2821_DACINIT);

	return 0;
}