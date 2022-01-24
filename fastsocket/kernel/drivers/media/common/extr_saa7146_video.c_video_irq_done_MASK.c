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
struct saa7146_dmaqueue {int /*<<< orphan*/ * curr; } ;
struct saa7146_vv {struct saa7146_dmaqueue video_q; } ;
struct saa7146_dev {int /*<<< orphan*/  slock; struct saa7146_vv* vv_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  VIDEOBUF_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,struct saa7146_dmaqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*,struct saa7146_dmaqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct saa7146_dev *dev, unsigned long st)
{
	struct saa7146_vv *vv = dev->vv_data;
	struct saa7146_dmaqueue *q = &vv->video_q;

	FUNC3(&dev->slock);
	FUNC0(("called.\n"));

	/* only finish the buffer if we have one... */
	if( NULL != q->curr ) {
		FUNC1(dev,q,VIDEOBUF_DONE);
	}
	FUNC2(dev,q,0);

	FUNC4(&dev->slock);
}