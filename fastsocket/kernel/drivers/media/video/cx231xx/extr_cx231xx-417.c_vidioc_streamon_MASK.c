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
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int /*<<< orphan*/  vidq; struct cx231xx* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_pkt_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_pkt_size; } ;
struct cx231xx {TYPE_2__ ts1_mode; TYPE_1__ video_mode; scalar_t__ USE_ISO; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int /*<<< orphan*/  CX231XX_DIGITAL_MODE ; 
 int /*<<< orphan*/  CX231XX_NUM_BUFS ; 
 int /*<<< orphan*/  CX231XX_NUM_PACKETS ; 
 int /*<<< orphan*/  INDEX_TS1 ; 
 int /*<<< orphan*/  cx231xx_bulk_copy ; 
 int FUNC0 (struct cx231xx*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cx231xx_isoc_copy ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cx231xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
				enum v4l2_buf_type i)
{
	struct cx231xx_fh  *fh  = file->private_data;

	struct cx231xx *dev = fh->dev;
	int rc = 0;
	FUNC4(3, "enter vidioc_streamon()\n");
		FUNC2(dev, INDEX_TS1, 0);
		rc = FUNC3(dev, CX231XX_DIGITAL_MODE);
		if (dev->USE_ISO)
			rc = FUNC1(dev, CX231XX_NUM_PACKETS,
				       CX231XX_NUM_BUFS,
				       dev->video_mode.max_pkt_size,
				       cx231xx_isoc_copy);
		else {
			rc = FUNC0(dev, 320,
				       5,
				       dev->ts1_mode.max_pkt_size,
				       cx231xx_bulk_copy);
		}
	FUNC4(3, "exit vidioc_streamon()\n");
	return FUNC5(&fh->vidq);
}