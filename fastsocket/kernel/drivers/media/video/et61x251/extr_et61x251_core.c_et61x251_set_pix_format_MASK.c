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
struct v4l2_pix_format {scalar_t__ pixelformat; } ;
struct et61x251_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ V4L2_PIX_FMT_ET61X251 ; 
 int FUNC0 (struct et61x251_device*,int) ; 
 scalar_t__ FUNC1 (struct et61x251_device*,int,int) ; 

__attribute__((used)) static int
FUNC2(struct et61x251_device* cam,
			struct v4l2_pix_format* pix)
{
	int r, err = 0;

	if ((r = FUNC0(cam, 0x12)) < 0)
		err += r;
	if (pix->pixelformat == V4L2_PIX_FMT_ET61X251)
		err += FUNC1(cam, r & 0xfd, 0x12);
	else
		err += FUNC1(cam, r | 0x02, 0x12);

	return err ? -EIO : 0;
}