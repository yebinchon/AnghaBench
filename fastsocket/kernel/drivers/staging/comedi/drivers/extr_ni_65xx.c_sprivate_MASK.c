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
struct ni_65xx_subdevice_private {int dummy; } ;
struct comedi_subdevice {struct ni_65xx_subdevice_private* private; } ;

/* Variables and functions */

__attribute__((used)) static inline struct ni_65xx_subdevice_private *FUNC0(struct comedi_subdevice
							 *subdev)
{
	return subdev->private;
}