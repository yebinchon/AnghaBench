#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ivtv_stream {int /*<<< orphan*/  name; TYPE_2__* vdev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * kilobytes; } ;
struct ivtv {TYPE_1__ options; struct ivtv_stream* streams; } ;
struct TYPE_9__ {int vfl_type; int num_offset; } ;
struct TYPE_8__ {int num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IVTV_ENC_STREAM_TYPE_MPG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,...) ; 
#define  VFL_TYPE_GRABBER 130 
#define  VFL_TYPE_RADIO 129 
#define  VFL_TYPE_VBI 128 
 TYPE_6__* ivtv_stream_info ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct ivtv_stream*) ; 

__attribute__((used)) static int FUNC6(struct ivtv *itv, int type)
{
	struct ivtv_stream *s = &itv->streams[type];
	int vfl_type = ivtv_stream_info[type].vfl_type;
	const char *name;
	int num;

	if (s->vdev == NULL)
		return 0;

	num = s->vdev->num;
	/* card number + user defined offset + device offset */
	if (type != IVTV_ENC_STREAM_TYPE_MPG) {
		struct ivtv_stream *s_mpg = &itv->streams[IVTV_ENC_STREAM_TYPE_MPG];

		if (s_mpg->vdev)
			num = s_mpg->vdev->num + ivtv_stream_info[type].num_offset;
	}
	FUNC5(s->vdev, s);

	/* Register device. First try the desired minor, then any free one. */
	if (FUNC4(s->vdev, vfl_type, num)) {
		FUNC0("Couldn't register v4l2 device for %s (device node number %d)\n",
				s->name, num);
		FUNC3(s->vdev);
		s->vdev = NULL;
		return -ENOMEM;
	}
	name = FUNC2(s->vdev);

	switch (vfl_type) {
	case VFL_TYPE_GRABBER:
		FUNC1("Registered device %s for %s (%d kB)\n",
			name, s->name, itv->options.kilobytes[type]);
		break;
	case VFL_TYPE_RADIO:
		FUNC1("Registered device %s for %s\n",
			name, s->name);
		break;
	case VFL_TYPE_VBI:
		if (itv->options.kilobytes[type])
			FUNC1("Registered device %s for %s (%d kB)\n",
				name, s->name, itv->options.kilobytes[type]);
		else
			FUNC1("Registered device %s for %s\n",
				name, s->name);
		break;
	}
	return 0;
}