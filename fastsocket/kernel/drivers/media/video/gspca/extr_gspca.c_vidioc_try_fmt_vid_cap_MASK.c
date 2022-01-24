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
struct v4l2_format {int dummy; } ;
struct gspca_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct gspca_dev*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC1(struct file *file,
			      void *priv,
			      struct v4l2_format *fmt)
{
	struct gspca_dev *gspca_dev = priv;
	int ret;

	ret = FUNC0(gspca_dev, fmt);
	if (ret < 0)
		return ret;
	return 0;
}