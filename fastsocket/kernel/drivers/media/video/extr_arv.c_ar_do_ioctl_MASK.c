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
struct video_window {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct video_device {int dummy; } ;
struct video_capability {int /*<<< orphan*/  minheight; int /*<<< orphan*/  minwidth; int /*<<< orphan*/  maxheight; int /*<<< orphan*/  maxwidth; int /*<<< orphan*/  audios; int /*<<< orphan*/  channels; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct ar_device {int /*<<< orphan*/  lock; void* mode; int /*<<< orphan*/  line_bytes; int /*<<< orphan*/  frame_bytes; int /*<<< orphan*/  size; int /*<<< orphan*/  width; int /*<<< orphan*/  height; TYPE_1__* vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_FRAME_BYTES_QVGA ; 
 int /*<<< orphan*/  AR_FRAME_BYTES_VGA ; 
 int /*<<< orphan*/  AR_HEIGHT_QVGA ; 
 int /*<<< orphan*/  AR_HEIGHT_VGA ; 
 int /*<<< orphan*/  AR_LINE_BYTES_QVGA ; 
 int /*<<< orphan*/  AR_LINE_BYTES_VGA ; 
 void* AR_MODE_INTERLACE ; 
 void* AR_MODE_NORMAL ; 
 int /*<<< orphan*/  AR_SIZE_QVGA ; 
 int /*<<< orphan*/  AR_SIZE_VGA ; 
 int /*<<< orphan*/  AR_WIDTH_QVGA ; 
 int /*<<< orphan*/  AR_WIDTH_VGA ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 long EINVAL ; 
 long ENOIOCTLCMD ; 
 int /*<<< orphan*/  MAX_AR_HEIGHT ; 
 int /*<<< orphan*/  MAX_AR_WIDTH ; 
 int /*<<< orphan*/  MIN_AR_HEIGHT ; 
 int /*<<< orphan*/  MIN_AR_WIDTH ; 
#define  VIDIOCCAPTURE 156 
#define  VIDIOCGAUDIO 155 
#define  VIDIOCGCAP 154 
#define  VIDIOCGCAPTURE 153 
#define  VIDIOCGCHAN 152 
#define  VIDIOCGFBUF 151 
#define  VIDIOCGFREQ 150 
#define  VIDIOCGMBUF 149 
#define  VIDIOCGPICT 148 
#define  VIDIOCGPLAYINFO 147 
#define  VIDIOCGTUNER 146 
#define  VIDIOCGUNIT 145 
#define  VIDIOCGVBIFMT 144 
#define  VIDIOCGWIN 143 
#define  VIDIOCKEY 142 
#define  VIDIOCMCAPTURE 141 
#define  VIDIOCSAUDIO 140 
#define  VIDIOCSCAPTURE 139 
#define  VIDIOCSCHAN 138 
#define  VIDIOCSFBUF 137 
#define  VIDIOCSFREQ 136 
#define  VIDIOCSMICROCODE 135 
#define  VIDIOCSPICT 134 
#define  VIDIOCSPLAYMODE 133 
#define  VIDIOCSTUNER 132 
#define  VIDIOCSVBIFMT 131 
#define  VIDIOCSWIN 130 
#define  VIDIOCSWRITEMODE 129 
#define  VIDIOCSYNC 128 
 int /*<<< orphan*/  VID_TYPE_CAPTURE ; 
 int /*<<< orphan*/  FUNC1 (struct video_window*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vga_interlace ; 
 struct video_device* FUNC5 (struct file*) ; 
 struct ar_device* FUNC6 (struct video_device*) ; 

__attribute__((used)) static long FUNC7(struct file *file, unsigned int cmd, void *arg)
{
	struct video_device *dev = FUNC5(file);
	struct ar_device *ar = FUNC6(dev);

	FUNC0(1, "ar_ioctl()\n");
	switch(cmd) {
	case VIDIOCGCAP:
	{
		struct video_capability *b = arg;
		FUNC0(1, "VIDIOCGCAP:\n");
		FUNC4(b->name, ar->vdev->name);
		b->type = VID_TYPE_CAPTURE;
		b->channels = 0;
		b->audios = 0;
		b->maxwidth = MAX_AR_WIDTH;
		b->maxheight = MAX_AR_HEIGHT;
		b->minwidth = MIN_AR_WIDTH;
		b->minheight = MIN_AR_HEIGHT;
		return 0;
	}
	case VIDIOCGCHAN:
		FUNC0(1, "VIDIOCGCHAN:\n");
		return 0;
	case VIDIOCSCHAN:
		FUNC0(1, "VIDIOCSCHAN:\n");
		return 0;
	case VIDIOCGTUNER:
		FUNC0(1, "VIDIOCGTUNER:\n");
		return 0;
	case VIDIOCSTUNER:
		FUNC0(1, "VIDIOCSTUNER:\n");
		return 0;
	case VIDIOCGPICT:
		FUNC0(1, "VIDIOCGPICT:\n");
		return 0;
	case VIDIOCSPICT:
		FUNC0(1, "VIDIOCSPICT:\n");
		return 0;
	case VIDIOCCAPTURE:
		FUNC0(1, "VIDIOCCAPTURE:\n");
		return -EINVAL;
	case VIDIOCGWIN:
	{
		struct video_window *w = arg;
		FUNC0(1, "VIDIOCGWIN:\n");
		FUNC1(w, 0, sizeof(*w));
		w->width = ar->width;
		w->height = ar->height;
		return 0;
	}
	case VIDIOCSWIN:
	{
		struct video_window *w = arg;
		FUNC0(1, "VIDIOCSWIN:\n");
		if ((w->width != AR_WIDTH_VGA || w->height != AR_HEIGHT_VGA) &&
		    (w->width != AR_WIDTH_QVGA || w->height != AR_HEIGHT_QVGA))
				return -EINVAL;

		FUNC2(&ar->lock);
		ar->width = w->width;
		ar->height = w->height;
		if (ar->width == AR_WIDTH_VGA) {
			ar->size = AR_SIZE_VGA;
			ar->frame_bytes = AR_FRAME_BYTES_VGA;
			ar->line_bytes = AR_LINE_BYTES_VGA;
			if (vga_interlace)
				ar->mode = AR_MODE_INTERLACE;
			else
				ar->mode = AR_MODE_NORMAL;
		} else {
			ar->size = AR_SIZE_QVGA;
			ar->frame_bytes = AR_FRAME_BYTES_QVGA;
			ar->line_bytes = AR_LINE_BYTES_QVGA;
			ar->mode = AR_MODE_INTERLACE;
		}
		FUNC3(&ar->lock);
		return 0;
	}
	case VIDIOCGFBUF:
		FUNC0(1, "VIDIOCGFBUF:\n");
		return -EINVAL;
	case VIDIOCSFBUF:
		FUNC0(1, "VIDIOCSFBUF:\n");
		return -EINVAL;
	case VIDIOCKEY:
		FUNC0(1, "VIDIOCKEY:\n");
		return 0;
	case VIDIOCGFREQ:
		FUNC0(1, "VIDIOCGFREQ:\n");
		return -EINVAL;
	case VIDIOCSFREQ:
		FUNC0(1, "VIDIOCSFREQ:\n");
		return -EINVAL;
	case VIDIOCGAUDIO:
		FUNC0(1, "VIDIOCGAUDIO:\n");
		return -EINVAL;
	case VIDIOCSAUDIO:
		FUNC0(1, "VIDIOCSAUDIO:\n");
		return -EINVAL;
	case VIDIOCSYNC:
		FUNC0(1, "VIDIOCSYNC:\n");
		return -EINVAL;
	case VIDIOCMCAPTURE:
		FUNC0(1, "VIDIOCMCAPTURE:\n");
		return -EINVAL;
	case VIDIOCGMBUF:
		FUNC0(1, "VIDIOCGMBUF:\n");
		return -EINVAL;
	case VIDIOCGUNIT:
		FUNC0(1, "VIDIOCGUNIT:\n");
		return -EINVAL;
	case VIDIOCGCAPTURE:
		FUNC0(1, "VIDIOCGCAPTURE:\n");
		return -EINVAL;
	case VIDIOCSCAPTURE:
		FUNC0(1, "VIDIOCSCAPTURE:\n");
		return -EINVAL;
	case VIDIOCSPLAYMODE:
		FUNC0(1, "VIDIOCSPLAYMODE:\n");
		return -EINVAL;
	case VIDIOCSWRITEMODE:
		FUNC0(1, "VIDIOCSWRITEMODE:\n");
		return -EINVAL;
	case VIDIOCGPLAYINFO:
		FUNC0(1, "VIDIOCGPLAYINFO:\n");
		return -EINVAL;
	case VIDIOCSMICROCODE:
		FUNC0(1, "VIDIOCSMICROCODE:\n");
		return -EINVAL;
	case VIDIOCGVBIFMT:
		FUNC0(1, "VIDIOCGVBIFMT:\n");
		return -EINVAL;
	case VIDIOCSVBIFMT:
		FUNC0(1, "VIDIOCSVBIFMT:\n");
		return -EINVAL;
	default:
		FUNC0(1, "Unknown ioctl(0x%08x)\n", cmd);
		return -ENOIOCTLCMD;
	}
	return 0;
}