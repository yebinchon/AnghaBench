#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct inode {int dummy; } ;
struct file {struct dmxdev_filter* private_data; } ;
struct dmxdev_filter {int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; struct dmxdev* dev; } ;
struct dmxdev {int /*<<< orphan*/  mutex; TYPE_1__* demux; } ;
struct dmx_stc {int /*<<< orphan*/  base; int /*<<< orphan*/  stc; int /*<<< orphan*/  num; } ;
struct TYPE_5__ {int (* get_caps ) (TYPE_1__*,void*) ;int (* set_source ) (TYPE_1__*,void*) ;int (* get_stc ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* get_pes_pids ) (TYPE_1__*,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMXDEV_STATE_SET ; 
#define  DMX_ADD_PID 138 
#define  DMX_GET_CAPS 137 
#define  DMX_GET_PES_PIDS 136 
#define  DMX_GET_STC 135 
#define  DMX_REMOVE_PID 134 
#define  DMX_SET_BUFFER_SIZE 133 
#define  DMX_SET_FILTER 132 
#define  DMX_SET_PES_FILTER 131 
#define  DMX_SET_SOURCE 130 
#define  DMX_START 129 
#define  DMX_STOP 128 
 int EINVAL ; 
 int ERESTARTSYS ; 
 int FUNC0 (struct dmxdev*,struct dmxdev_filter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dmxdev*,struct dmxdev_filter*,void*) ; 
 int FUNC2 (struct dmxdev_filter*) ; 
 int FUNC3 (struct dmxdev_filter*) ; 
 int FUNC4 (struct dmxdev*,struct dmxdev_filter*,void*) ; 
 int FUNC5 (struct dmxdev*,struct dmxdev_filter*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dmxdev_filter*,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,void*) ; 
 int FUNC10 (TYPE_1__*,void*) ; 
 int FUNC11 (TYPE_1__*,void*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, struct file *file,
			      unsigned int cmd, void *parg)
{
	struct dmxdev_filter *dmxdevfilter = file->private_data;
	struct dmxdev *dmxdev = dmxdevfilter->dev;
	unsigned long arg = (unsigned long)parg;
	int ret = 0;

	if (FUNC7(&dmxdev->mutex))
		return -ERESTARTSYS;

	switch (cmd) {
	case DMX_START:
		if (FUNC7(&dmxdevfilter->mutex)) {
			FUNC8(&dmxdev->mutex);
			return -ERESTARTSYS;
		}
		if (dmxdevfilter->state < DMXDEV_STATE_SET)
			ret = -EINVAL;
		else
			ret = FUNC2(dmxdevfilter);
		FUNC8(&dmxdevfilter->mutex);
		break;

	case DMX_STOP:
		if (FUNC7(&dmxdevfilter->mutex)) {
			FUNC8(&dmxdev->mutex);
			return -ERESTARTSYS;
		}
		ret = FUNC3(dmxdevfilter);
		FUNC8(&dmxdevfilter->mutex);
		break;

	case DMX_SET_FILTER:
		if (FUNC7(&dmxdevfilter->mutex)) {
			FUNC8(&dmxdev->mutex);
			return -ERESTARTSYS;
		}
		ret = FUNC1(dmxdev, dmxdevfilter, parg);
		FUNC8(&dmxdevfilter->mutex);
		break;

	case DMX_SET_PES_FILTER:
		if (FUNC7(&dmxdevfilter->mutex)) {
			FUNC8(&dmxdev->mutex);
			return -ERESTARTSYS;
		}
		ret = FUNC4(dmxdev, dmxdevfilter, parg);
		FUNC8(&dmxdevfilter->mutex);
		break;

	case DMX_SET_BUFFER_SIZE:
		if (FUNC7(&dmxdevfilter->mutex)) {
			FUNC8(&dmxdev->mutex);
			return -ERESTARTSYS;
		}
		ret = FUNC6(dmxdevfilter, arg);
		FUNC8(&dmxdevfilter->mutex);
		break;

	case DMX_GET_PES_PIDS:
		if (!dmxdev->demux->get_pes_pids) {
			ret = -EINVAL;
			break;
		}
		dmxdev->demux->get_pes_pids(dmxdev->demux, parg);
		break;

	case DMX_GET_CAPS:
		if (!dmxdev->demux->get_caps) {
			ret = -EINVAL;
			break;
		}
		ret = dmxdev->demux->get_caps(dmxdev->demux, parg);
		break;

	case DMX_SET_SOURCE:
		if (!dmxdev->demux->set_source) {
			ret = -EINVAL;
			break;
		}
		ret = dmxdev->demux->set_source(dmxdev->demux, parg);
		break;

	case DMX_GET_STC:
		if (!dmxdev->demux->get_stc) {
			ret = -EINVAL;
			break;
		}
		ret = dmxdev->demux->get_stc(dmxdev->demux,
					     ((struct dmx_stc *)parg)->num,
					     &((struct dmx_stc *)parg)->stc,
					     &((struct dmx_stc *)parg)->base);
		break;

	case DMX_ADD_PID:
		if (FUNC7(&dmxdevfilter->mutex)) {
			ret = -ERESTARTSYS;
			break;
		}
		ret = FUNC0(dmxdev, dmxdevfilter, *(u16 *)parg);
		FUNC8(&dmxdevfilter->mutex);
		break;

	case DMX_REMOVE_PID:
		if (FUNC7(&dmxdevfilter->mutex)) {
			ret = -ERESTARTSYS;
			break;
		}
		ret = FUNC5(dmxdev, dmxdevfilter, *(u16 *)parg);
		FUNC8(&dmxdevfilter->mutex);
		break;

	default:
		ret = -EINVAL;
		break;
	}
	FUNC8(&dmxdev->mutex);
	return ret;
}