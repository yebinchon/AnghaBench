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
struct em28xx_fmt {int dummy; } ;
struct em28xx {unsigned int width; unsigned int height; int /*<<< orphan*/  vscale; int /*<<< orphan*/  hscale; struct em28xx_fmt* format; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*) ; 
 struct em28xx_fmt* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct em28xx*,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct em28xx *dev, unsigned int fourcc,
				   unsigned width, unsigned height)
{
	struct em28xx_fmt     *fmt;

	fmt = FUNC2(fourcc);
	if (!fmt)
		return -EINVAL;

	dev->format = fmt;
	dev->width  = width;
	dev->height = height;

	/* set new image size */
	FUNC3(dev, dev->width, dev->height, &dev->hscale, &dev->vscale);

	FUNC1(dev);
	FUNC0(dev);

	return 0;
}