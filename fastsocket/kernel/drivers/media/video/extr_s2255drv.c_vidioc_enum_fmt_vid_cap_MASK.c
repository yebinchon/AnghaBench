#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_fmtdesc {int index; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  description; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fourcc; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* formats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			       struct v4l2_fmtdesc *f)
{
	int index = 0;
	if (f)
		index = f->index;

	if (index >= FUNC0(formats))
		return -EINVAL;

	FUNC1(4, "name %s\n", formats[index].name);
	FUNC2(f->description, formats[index].name, sizeof(f->description));
	f->pixelformat = formats[index].fourcc;
	return 0;
}