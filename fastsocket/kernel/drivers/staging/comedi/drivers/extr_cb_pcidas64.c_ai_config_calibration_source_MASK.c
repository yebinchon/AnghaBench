#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ layout; } ;
struct TYPE_3__ {unsigned int calibration_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int EINVAL ; 
 scalar_t__ LAYOUT_60XX ; 
 TYPE_2__* FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 TYPE_1__* FUNC3 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
					unsigned int *data)
{
	unsigned int source = data[1];
	int num_calibration_sources;

	if (FUNC1(dev)->layout == LAYOUT_60XX)
		num_calibration_sources = 16;
	else
		num_calibration_sources = 8;
	if (source >= num_calibration_sources) {
		FUNC2("invalid calibration source: %i\n", source);
		return -EINVAL;
	}

	FUNC0("setting calibration source to %i\n", source);
	FUNC3(dev)->calibration_source = source;

	return 2;
}