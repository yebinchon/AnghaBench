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
struct vivi_fmt {int /*<<< orphan*/  fourcc; int /*<<< orphan*/  name; } ;
struct v4l2_fmtdesc {size_t index; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  description; } ;
struct file {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct vivi_fmt*) ; 
 int EINVAL ; 
 struct vivi_fmt* formats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void  *priv,
					struct v4l2_fmtdesc *f)
{
	struct vivi_fmt *fmt;

	if (f->index >= FUNC0(formats))
		return -EINVAL;

	fmt = &formats[f->index];

	FUNC1(f->description, fmt->name, sizeof(f->description));
	f->pixelformat = fmt->fourcc;
	return 0;
}