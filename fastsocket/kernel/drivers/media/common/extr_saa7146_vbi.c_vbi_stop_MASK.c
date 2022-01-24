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
struct TYPE_2__ {int /*<<< orphan*/  timeout; scalar_t__ curr; } ;
struct saa7146_vv {TYPE_1__ vbi_q; int /*<<< orphan*/ * vbi_streaming; } ;
struct saa7146_fh {int /*<<< orphan*/  vbi_read_timeout; int /*<<< orphan*/  vbi_q; struct saa7146_dev* dev; } ;
struct saa7146_dev {int /*<<< orphan*/  slock; struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MASK_20 ; 
 int /*<<< orphan*/  MASK_28 ; 
 int /*<<< orphan*/  MASK_29 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDEOBUF_DONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct saa7146_fh *fh, struct file *file)
{
	struct saa7146_dev *dev = fh->dev;
	struct saa7146_vv *vv = dev->vv_data;
	unsigned long flags;
	FUNC0(("dev:%p, fh:%p\n",dev, fh));

	FUNC5(&dev->slock,flags);

	/* disable rps1  */
	FUNC4(dev, MC1, MASK_29);

	/* disable rps1 irqs */
	FUNC1(dev, MASK_28);

	/* shut down dma 3 transfers */
	FUNC4(dev, MC1, MASK_20);

	if (vv->vbi_q.curr) {
		FUNC3(dev,&vv->vbi_q,VIDEOBUF_DONE);
	}

	FUNC7(&fh->vbi_q);

	vv->vbi_streaming = NULL;

	FUNC2(&vv->vbi_q.timeout);
	FUNC2(&fh->vbi_read_timeout);

	FUNC6(&dev->slock, flags);
}