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
struct videobuf_queue {int dummy; } ;
struct saa7146_vv {int dummy; } ;
struct saa7146_fh {struct videobuf_queue video_q; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {struct saa7146_fh* private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct saa7146_fh*) ; 
 scalar_t__ FUNC1 (struct saa7146_fh*) ; 
 int FUNC2 (struct saa7146_fh*) ; 
 int FUNC3 (struct saa7146_fh*,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct videobuf_queue*) ; 

__attribute__((used)) static void FUNC5(struct saa7146_dev *dev, struct file *file)
{
	struct saa7146_fh *fh = file->private_data;
	struct saa7146_vv *vv = dev->vv_data;
	struct videobuf_queue *q = &fh->video_q;
	int err;

	if (FUNC0(fh) != 0) {
		err = FUNC3(fh, file);
	} else if (FUNC1(fh) != 0) {
		err = FUNC2(fh);
	}

	FUNC4(q);

	/* hmm, why is this function declared void? */
	/* return err */
}