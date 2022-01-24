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
struct video_window {int dummy; } ;
struct video_picture {int dummy; } ;
struct file {struct cpia2_fh* private_data; } ;
struct cpia2_fh {int prio; } ;
struct TYPE_3__ {int /*<<< orphan*/  stream_mode; } ;
struct TYPE_4__ {TYPE_1__ camera_state; } ;
struct camera_data {int /*<<< orphan*/  busy_lock; int /*<<< orphan*/  streaming; int /*<<< orphan*/  mmapped; TYPE_2__ params; int /*<<< orphan*/  prio; int /*<<< orphan*/  vw; int /*<<< orphan*/  vp; int /*<<< orphan*/  present; } ;
typedef  enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;

/* Variables and functions */
#define  CPIA2_IOC_SET_GPIO 197 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 long EBUSY ; 
 long EINVAL ; 
 long ENODEV ; 
 long ENOIOCTLCMD ; 
 long ENOTTY ; 
 long ERESTARTSYS ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_PRIORITY_RECORD ; 
#define  VIDIOCCAPTURE 196 
#define  VIDIOCGAUDIO 195 
#define  VIDIOCGCAP 194 
#define  VIDIOCGCHAN 193 
#define  VIDIOCGFBUF 192 
#define  VIDIOCGFREQ 191 
#define  VIDIOCGMBUF 190 
#define  VIDIOCGPICT 189 
#define  VIDIOCGTUNER 188 
#define  VIDIOCGWIN 187 
#define  VIDIOCKEY 186 
#define  VIDIOCMCAPTURE 185 
#define  VIDIOCSAUDIO 184 
#define  VIDIOCSCHAN 183 
#define  VIDIOCSFBUF 182 
#define  VIDIOCSFREQ 181 
#define  VIDIOCSPICT 180 
#define  VIDIOCSTUNER 179 
#define  VIDIOCSWIN 178 
#define  VIDIOCSYNC 177 
#define  VIDIOC_CROPCAP 176 
#define  VIDIOC_DQBUF 175 
#define  VIDIOC_ENUMAUDIO 174 
#define  VIDIOC_ENUMAUDOUT 173 
#define  VIDIOC_ENUMINPUT 172 
#define  VIDIOC_ENUMOUTPUT 171 
#define  VIDIOC_ENUMSTD 170 
#define  VIDIOC_ENUM_FMT 169 
#define  VIDIOC_G_AUDIO 168 
#define  VIDIOC_G_AUDOUT 167 
#define  VIDIOC_G_CROP 166 
#define  VIDIOC_G_CTRL 165 
#define  VIDIOC_G_FBUF 164 
#define  VIDIOC_G_FMT 163 
#define  VIDIOC_G_FREQUENCY 162 
#define  VIDIOC_G_INPUT 161 
#define  VIDIOC_G_JPEGCOMP 160 
#define  VIDIOC_G_MODULATOR 159 
#define  VIDIOC_G_OUTPUT 158 
#define  VIDIOC_G_PARM 157 
#define  VIDIOC_G_PRIORITY 156 
#define  VIDIOC_G_STD 155 
#define  VIDIOC_G_TUNER 154 
#define  VIDIOC_OVERLAY 153 
#define  VIDIOC_QBUF 152 
#define  VIDIOC_QUERYBUF 151 
#define  VIDIOC_QUERYCAP 150 
#define  VIDIOC_QUERYCTRL 149 
#define  VIDIOC_QUERYMENU 148 
#define  VIDIOC_QUERYSTD 147 
#define  VIDIOC_REQBUFS 146 
#define  VIDIOC_STREAMOFF 145 
#define  VIDIOC_STREAMON 144 
#define  VIDIOC_S_AUDIO 143 
#define  VIDIOC_S_AUDOUT 142 
#define  VIDIOC_S_CROP 141 
#define  VIDIOC_S_CTRL 140 
#define  VIDIOC_S_FBUF 139 
#define  VIDIOC_S_FMT 138 
#define  VIDIOC_S_FREQUENCY 137 
#define  VIDIOC_S_INPUT 136 
#define  VIDIOC_S_JPEGCOMP 135 
#define  VIDIOC_S_MODULATOR 134 
#define  VIDIOC_S_OUTPUT 133 
#define  VIDIOC_S_PARM 132 
#define  VIDIOC_S_PRIORITY 131 
#define  VIDIOC_S_STD 130 
#define  VIDIOC_S_TUNER 129 
#define  VIDIOC_TRY_FMT 128 
 long FUNC1 (struct camera_data*,int /*<<< orphan*/ ) ; 
 long FUNC2 (struct camera_data*) ; 
 long FUNC3 (void*,struct camera_data*) ; 
 long FUNC4 (void*,struct camera_data*) ; 
 long FUNC5 (void*,struct camera_data*,struct file*) ; 
 long FUNC6 (void*,struct camera_data*) ; 
 long FUNC7 (void*,struct camera_data*) ; 
 long FUNC8 (void*,struct camera_data*) ; 
 long FUNC9 (void*) ; 
 long FUNC10 (void*,struct camera_data*) ; 
 long FUNC11 (void*,struct camera_data*) ; 
 long FUNC12 (unsigned int,void*,struct camera_data*) ; 
 long FUNC13 (void*,struct camera_data*,struct cpia2_fh*) ; 
 long FUNC14 (void*,struct camera_data*) ; 
 long FUNC15 (void*,struct camera_data*) ; 
 long FUNC16 (void*,struct camera_data*) ; 
 long FUNC17 (void*,struct camera_data*) ; 
 long FUNC18 (void*,struct camera_data*) ; 
 long FUNC19 (void*,struct camera_data*) ; 
 long FUNC20 (void*,struct camera_data*) ; 
 long FUNC21 (void*,struct camera_data*) ; 
 long FUNC22 (void*) ; 
 long FUNC23 (void*,struct camera_data*,struct cpia2_fh*) ; 
 long FUNC24 (void*,struct camera_data*) ; 
 long FUNC25 (void*,struct camera_data*) ; 
 long FUNC26 (void*,struct camera_data*,struct cpia2_fh*) ; 
 long FUNC27 (void*,struct camera_data*) ; 
 long FUNC28 (void*,struct camera_data*) ; 
 int /*<<< orphan*/  FUNC29 (void*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 long FUNC32 (int /*<<< orphan*/ *,int*,int) ; 
 long FUNC33 (int /*<<< orphan*/ *,int*) ; 
 int FUNC34 (int /*<<< orphan*/ *) ; 
 struct camera_data* FUNC35 (struct file*) ; 

__attribute__((used)) static long FUNC36(struct file *file, unsigned int cmd, void *arg)
{
	struct camera_data *cam = FUNC35(file);
	long retval = 0;

	if (!cam)
		return -ENOTTY;

	/* make this _really_ smp-safe */
	if (FUNC30(&cam->busy_lock))
		return -ERESTARTSYS;

	if (!cam->present) {
		FUNC31(&cam->busy_lock);
		return -ENODEV;
	}

	/* Priority check */
	switch (cmd) {
	case VIDIOCSWIN:
	case VIDIOCMCAPTURE:
	case VIDIOC_S_FMT:
	{
		struct cpia2_fh *fh = file->private_data;
		retval = FUNC33(&cam->prio, &fh->prio);
		if(retval) {
			FUNC31(&cam->busy_lock);
			return retval;
		}
		break;
	}
	case VIDIOCGMBUF:
	case VIDIOCSYNC:
	{
		struct cpia2_fh *fh = file->private_data;
		if(fh->prio != V4L2_PRIORITY_RECORD) {
			FUNC31(&cam->busy_lock);
			return -EBUSY;
		}
		break;
	}
	default:
		break;
	}

	switch (cmd) {
	case VIDIOCGCAP:	/* query capabilities */
		retval = FUNC3(arg, cam);
		break;

	case VIDIOCGCHAN:	/* get video source - we are a camera, nothing else */
		retval = FUNC9(arg);
		break;
	case VIDIOCSCHAN:	/* set video source - we are a camera, nothing else */
		retval = FUNC22(arg);
		break;
	case VIDIOCGPICT:	/* image properties */
		FUNC29(arg, &cam->vp, sizeof(struct video_picture));
		break;
	case VIDIOCSPICT:
		retval = FUNC25(arg, cam);
		break;
	case VIDIOCGWIN:	/* get/set capture window */
		FUNC29(arg, &cam->vw, sizeof(struct video_window));
		break;
	case VIDIOCSWIN:
		retval = FUNC26(arg, cam, file->private_data);
		break;
	case VIDIOCGMBUF:	/* mmap interface */
		retval = FUNC11(arg, cam);
		break;
	case VIDIOCMCAPTURE:
		retval = FUNC13(arg, cam, file->private_data);
		break;
	case VIDIOCSYNC:
		retval = FUNC27(arg, cam);
		break;
		/* pointless to implement overlay with this camera */
	case VIDIOCCAPTURE:
	case VIDIOCGFBUF:
	case VIDIOCSFBUF:
	case VIDIOCKEY:
		retval = -EINVAL;
		break;

		/* tuner interface - we have none */
	case VIDIOCGTUNER:
	case VIDIOCSTUNER:
	case VIDIOCGFREQ:
	case VIDIOCSFREQ:
		retval = -EINVAL;
		break;

		/* audio interface - we have none */
	case VIDIOCGAUDIO:
	case VIDIOCSAUDIO:
		retval = -EINVAL;
		break;

	/* CPIA2 extension to Video4Linux API */
	case CPIA2_IOC_SET_GPIO:
		retval = FUNC24(arg, cam);
		break;
	case VIDIOC_QUERYCAP:
		retval = FUNC16(arg,cam);
		break;

	case VIDIOC_ENUMINPUT:
	case VIDIOC_G_INPUT:
	case VIDIOC_S_INPUT:
		retval = FUNC12(cmd, arg, cam);
		break;

	case VIDIOC_ENUM_FMT:
		retval = FUNC6(arg,cam);
		break;
	case VIDIOC_TRY_FMT:
		retval = FUNC28(arg,cam);
		break;
	case VIDIOC_G_FMT:
		retval = FUNC10(arg,cam);
		break;
	case VIDIOC_S_FMT:
		retval = FUNC23(arg,cam,file->private_data);
		break;

	case VIDIOC_CROPCAP:
		retval = FUNC4(arg,cam);
		break;
	case VIDIOC_G_CROP:
	case VIDIOC_S_CROP:
		// TODO: I think cropping can be implemented - SJB
		retval = -EINVAL;
		break;

	case VIDIOC_QUERYCTRL:
		retval = FUNC17(arg,cam);
		break;
	case VIDIOC_QUERYMENU:
		retval = FUNC18(arg,cam);
		break;
	case VIDIOC_G_CTRL:
		retval = FUNC7(arg,cam);
		break;
	case VIDIOC_S_CTRL:
		retval = FUNC20(arg,cam);
		break;

	case VIDIOC_G_JPEGCOMP:
		retval = FUNC8(arg,cam);
		break;
	case VIDIOC_S_JPEGCOMP:
		retval = FUNC21(arg,cam);
		break;

	case VIDIOC_G_PRIORITY:
	{
		struct cpia2_fh *fh = file->private_data;
		*(enum v4l2_priority*)arg = fh->prio;
		break;
	}
	case VIDIOC_S_PRIORITY:
	{
		struct cpia2_fh *fh = file->private_data;
		enum v4l2_priority prio;
		prio = *(enum v4l2_priority*)arg;
		if(cam->streaming &&
		   prio != fh->prio &&
		   fh->prio == V4L2_PRIORITY_RECORD) {
			/* Can't drop record priority while streaming */
			retval = -EBUSY;
		} else if(prio == V4L2_PRIORITY_RECORD &&
		   prio != fh->prio &&
		   FUNC34(&cam->prio) == V4L2_PRIORITY_RECORD) {
			/* Only one program can record at a time */
			retval = -EBUSY;
		} else {
			retval = FUNC32(&cam->prio, &fh->prio, prio);
		}
		break;
	}

	case VIDIOC_REQBUFS:
		retval = FUNC19(arg,cam);
		break;
	case VIDIOC_QUERYBUF:
		retval = FUNC15(arg,cam);
		break;
	case VIDIOC_QBUF:
		retval = FUNC14(arg,cam);
		break;
	case VIDIOC_DQBUF:
		retval = FUNC5(arg,cam,file);
		break;
	case VIDIOC_STREAMON:
	{
		int type;
		FUNC0("VIDIOC_STREAMON, streaming=%d\n", cam->streaming);
		type = *(int*)arg;
		if(!cam->mmapped || type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
			retval = -EINVAL;

		if(!cam->streaming) {
			retval = FUNC1(cam,
					  cam->params.camera_state.stream_mode);
		} else {
			retval = -EINVAL;
		}

		break;
	}
	case VIDIOC_STREAMOFF:
	{
		int type;
		FUNC0("VIDIOC_STREAMOFF, streaming=%d\n", cam->streaming);
		type = *(int*)arg;
		if(!cam->mmapped || type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
			retval = -EINVAL;

		if(cam->streaming) {
			retval = FUNC2(cam);
		} else {
			retval = -EINVAL;
		}

		break;
	}

	case VIDIOC_ENUMOUTPUT:
	case VIDIOC_G_OUTPUT:
	case VIDIOC_S_OUTPUT:
	case VIDIOC_G_MODULATOR:
	case VIDIOC_S_MODULATOR:

	case VIDIOC_ENUMAUDIO:
	case VIDIOC_G_AUDIO:
	case VIDIOC_S_AUDIO:

	case VIDIOC_ENUMAUDOUT:
	case VIDIOC_G_AUDOUT:
	case VIDIOC_S_AUDOUT:

	case VIDIOC_ENUMSTD:
	case VIDIOC_QUERYSTD:
	case VIDIOC_G_STD:
	case VIDIOC_S_STD:

	case VIDIOC_G_TUNER:
	case VIDIOC_S_TUNER:
	case VIDIOC_G_FREQUENCY:
	case VIDIOC_S_FREQUENCY:

	case VIDIOC_OVERLAY:
	case VIDIOC_G_FBUF:
	case VIDIOC_S_FBUF:

	case VIDIOC_G_PARM:
	case VIDIOC_S_PARM:
		retval = -EINVAL;
		break;
	default:
		retval = -ENOIOCTLCMD;
		break;
	}

	FUNC31(&cam->busy_lock);
	return retval;
}