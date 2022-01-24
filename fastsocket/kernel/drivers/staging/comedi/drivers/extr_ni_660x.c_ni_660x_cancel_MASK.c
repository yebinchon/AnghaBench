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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct ni_gpct*) ; 
 int FUNC1 (struct ni_gpct*) ; 
 struct ni_gpct* FUNC2 (struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct ni_gpct *counter = FUNC2(s);
	int retval;

	retval = FUNC1(counter);
	FUNC0(dev, counter);
	return retval;
}