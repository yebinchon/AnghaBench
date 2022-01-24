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
struct zoran_fh {struct zoran* zr; } ;
struct TYPE_4__ {int inputs; TYPE_1__* input; } ;
struct zoran {int /*<<< orphan*/  resource_lock; TYPE_2__ card; } ;
struct v4l2_input {int index; int /*<<< orphan*/  status; int /*<<< orphan*/  std; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_INPUT_TYPE_CAMERA ; 
 int /*<<< orphan*/  V4L2_STD_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct zoran*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_input_status ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_input*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC5(struct file *file, void *__fh,
				 struct v4l2_input *inp)
{
	struct zoran_fh *fh = __fh;
	struct zoran *zr = fh->zr;

	if (inp->index < 0 || inp->index >= zr->card.inputs)
		return -EINVAL;
	else {
		int id = inp->index;
		FUNC1(inp, 0, sizeof(*inp));
		inp->index = id;
	}

	FUNC4(inp->name, zr->card.input[inp->index].name,
		sizeof(inp->name) - 1);
	inp->type = V4L2_INPUT_TYPE_CAMERA;
	inp->std = V4L2_STD_ALL;

	/* Get status of video decoder */
	FUNC2(&zr->resource_lock);
	FUNC0(zr, video, g_input_status, &inp->status);
	FUNC3(&zr->resource_lock);
	return 0;
}