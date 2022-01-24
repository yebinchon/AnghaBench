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
struct comedi_subdevice {int /*<<< orphan*/  async; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      unsigned long new_size)
{
	int ret;

	ret = FUNC0(FUNC1(FUNC2(dev), FUNC3(s)),
			      s->async);
	if (ret < 0)
		return ret;

	return 0;
}