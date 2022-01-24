#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int readbuffers; int /*<<< orphan*/  timeperframe; } ;
struct TYPE_6__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {TYPE_3__ parm; } ;
struct saa7146_vv {TYPE_1__* standard; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *fh,
		struct v4l2_streamparm *parm)
{
	struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
	struct saa7146_vv *vv = dev->vv_data;

	parm->parm.capture.readbuffers = 1;
	FUNC0(vv->standard->id,
				    &parm->parm.capture.timeperframe);
	return 0;
}