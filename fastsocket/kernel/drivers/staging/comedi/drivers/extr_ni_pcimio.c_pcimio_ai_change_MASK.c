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
struct comedi_subdevice {int /*<<< orphan*/  async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ai_mite_ring; } ;

/* Variables and functions */
 TYPE_1__* devpriv ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev,
			    struct comedi_subdevice *s, unsigned long new_size)
{
	int ret;

	ret = FUNC0(devpriv->ai_mite_ring, s->async);
	if (ret < 0)
		return ret;

	return 0;
}