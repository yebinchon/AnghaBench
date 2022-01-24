#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct cx18 {scalar_t__* stream_buffers; TYPE_1__* streams; } ;
struct TYPE_3__ {struct video_device* video_dev; int /*<<< orphan*/ * dvb; } ;

/* Variables and functions */
 int CX18_ENC_STREAM_TYPE_IDX ; 
 int CX18_ENC_STREAM_TYPE_TS ; 
 int CX18_MAX_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct video_device*) ; 

void FUNC5(struct cx18 *cx, int unregister)
{
	struct video_device *vdev;
	int type;

	/* Teardown all streams */
	for (type = 0; type < CX18_MAX_STREAMS; type++) {

		/* The TS has a cx18_dvb structure, not a video_device */
		if (type == CX18_ENC_STREAM_TYPE_TS) {
			if (cx->streams[type].dvb != NULL) {
				if (unregister)
					FUNC0(&cx->streams[type]);
				FUNC2(cx->streams[type].dvb);
				cx->streams[type].dvb = NULL;
				FUNC1(&cx->streams[type]);
			}
			continue;
		}

		/* No struct video_device, but can have buffers allocated */
		if (type == CX18_ENC_STREAM_TYPE_IDX) {
			if (cx->stream_buffers[type] != 0) {
				cx->stream_buffers[type] = 0;
				FUNC1(&cx->streams[type]);
			}
			continue;
		}

		/* If struct video_device exists, can have buffers allocated */
		vdev = cx->streams[type].video_dev;

		cx->streams[type].video_dev = NULL;
		if (vdev == NULL)
			continue;

		FUNC1(&cx->streams[type]);

		/* Unregister or release device */
		if (unregister)
			FUNC4(vdev);
		else
			FUNC3(vdev);
	}
}