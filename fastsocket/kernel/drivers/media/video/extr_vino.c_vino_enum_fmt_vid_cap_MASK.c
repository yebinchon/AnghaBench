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
struct v4l2_fmtdesc {size_t index; int /*<<< orphan*/  description; int /*<<< orphan*/  pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_2__ {size_t description; int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t VINO_DATA_FMT_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* vino_data_formats ; 

__attribute__((used)) static int FUNC2(struct file *file, void *__fh,
			      struct v4l2_fmtdesc *fd)
{
	FUNC0("format index = %d\n", fd->index);

	if (fd->index >= VINO_DATA_FMT_COUNT)
		return -EINVAL;
	FUNC0("format name = %s\n", vino_data_formats[fd->index].description);

	fd->pixelformat = vino_data_formats[fd->index].pixelformat;
	FUNC1(fd->description, vino_data_formats[fd->index].description);
	return 0;
}