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
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {int dummy; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*,struct saa7134_fh*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_fh*) ; 
 int FUNC2 (struct saa7134_fh*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
					enum v4l2_buf_type type)
{
	struct saa7134_fh *fh = priv;
	struct saa7134_dev *dev = fh->dev;
	int res = FUNC2(fh);

	if (!FUNC0(dev, fh, res))
		return -EBUSY;

	return FUNC3(FUNC1(fh));
}