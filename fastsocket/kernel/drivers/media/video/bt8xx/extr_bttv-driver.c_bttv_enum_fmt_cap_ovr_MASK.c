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
struct v4l2_fmtdesc {unsigned int index; int pixelformat; int /*<<< orphan*/  description; } ;
struct TYPE_2__ {int fourcc; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int FORMATS ; 
 TYPE_1__* formats ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct v4l2_fmtdesc *f)
{
	int index = -1, i;

	for (i = 0; i < FORMATS; i++) {
		if (formats[i].fourcc != -1)
			index++;
		if ((unsigned int)index == f->index)
			break;
	}
	if (FORMATS == i)
		return -EINVAL;

	f->pixelformat = formats[i].fourcc;
	FUNC0(f->description, formats[i].name, sizeof(f->description));

	return i;
}