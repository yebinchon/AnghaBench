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
struct ni_gpct {int dummy; } ;
struct comedi_subdevice {int /*<<< orphan*/  async; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 int FUNC1 (struct comedi_device*,struct ni_gpct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ni_gpct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ni_gpct*,int /*<<< orphan*/ ) ; 
 struct ni_gpct* FUNC4 (struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s)
{
	int retval;

	struct ni_gpct *counter = FUNC4(s);
/* const struct comedi_cmd *cmd = &s->async->cmd; */

	retval = FUNC1(dev, counter, COMEDI_INPUT);
	if (retval) {
		FUNC0(dev,
			     "no dma channel available for use by counter");
		return retval;
	}
	FUNC2(counter, NULL, NULL, NULL, NULL);
	retval = FUNC3(counter, s->async);

	return retval;
}