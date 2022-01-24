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
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDIOC_TRY_FMT ; 
 int FUNC0 (struct au0828_dev*,int /*<<< orphan*/ ,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
				  struct v4l2_format *f)
{
	struct au0828_fh *fh  = priv;
	struct au0828_dev *dev = fh->dev;

	return FUNC0(dev, VIDIOC_TRY_FMT, f);
}