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
struct v4l2_output {scalar_t__ index; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_OUTPUT_TYPE_ANALOGVGAOVERLAY ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_output*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *__fh,
				  struct v4l2_output *outp)
{
	if (outp->index != 0)
		return -EINVAL;

	FUNC0(outp, 0, sizeof(*outp));
	outp->index = 0;
	outp->type = V4L2_OUTPUT_TYPE_ANALOGVGAOVERLAY;
	FUNC1(outp->name, "Autodetect", sizeof(outp->name)-1);

	return 0;
}