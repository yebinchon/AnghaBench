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
struct video_window {int height; int width; int /*<<< orphan*/  clipcount; int /*<<< orphan*/  flags; } ;
struct video_tuner {int flags; int mode; int /*<<< orphan*/  tuner; int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; int /*<<< orphan*/  name; } ;
struct video_picture {int depth; int brightness; int hue; int colour; int contrast; int /*<<< orphan*/  palette; } ;
struct video_device {int dummy; } ;
struct video_channel {int channel; int tuners; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; } ;
struct video_capability {int type; int channels; int maxwidth; int maxheight; int minwidth; int minheight; int /*<<< orphan*/  audios; int /*<<< orphan*/  name; } ;
struct pms_device {int width; int height; int /*<<< orphan*/  lock; struct video_picture picture; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
 long ENOIOCTLCMD ; 
#define  VIDEO_MODE_AUTO 148 
#define  VIDEO_MODE_NTSC 147 
#define  VIDEO_MODE_PAL 146 
#define  VIDEO_MODE_SECAM 145 
 int /*<<< orphan*/  VIDEO_PALETTE_RGB555 ; 
 int /*<<< orphan*/  VIDEO_PALETTE_RGB565 ; 
 int VIDEO_TUNER_NTSC ; 
 int VIDEO_TUNER_PAL ; 
 int VIDEO_TUNER_SECAM ; 
 int /*<<< orphan*/  VIDEO_TYPE_CAMERA ; 
#define  VIDIOCCAPTURE 144 
#define  VIDIOCGAUDIO 143 
#define  VIDIOCGCAP 142 
#define  VIDIOCGCHAN 141 
#define  VIDIOCGFBUF 140 
#define  VIDIOCGFREQ 139 
#define  VIDIOCGPICT 138 
#define  VIDIOCGTUNER 137 
#define  VIDIOCGWIN 136 
#define  VIDIOCKEY 135 
#define  VIDIOCSAUDIO 134 
#define  VIDIOCSCHAN 133 
#define  VIDIOCSFBUF 132 
#define  VIDIOCSFREQ 131 
#define  VIDIOCSPICT 130 
#define  VIDIOCSTUNER 129 
#define  VIDIOCSWIN 128 
 int VID_TYPE_CAPTURE ; 
 int VID_TYPE_SCALES ; 
 int /*<<< orphan*/  FUNC0 (struct video_window*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  standard ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 struct video_device* FUNC14 (struct file*) ; 

__attribute__((used)) static long FUNC15(struct file *file, unsigned int cmd, void *arg)
{
	struct video_device *dev = FUNC14(file);
	struct pms_device *pd=(struct pms_device *)dev;

	switch(cmd)
	{
		case VIDIOCGCAP:
		{
			struct video_capability *b = arg;
			FUNC13(b->name, "Mediavision PMS");
			b->type = VID_TYPE_CAPTURE|VID_TYPE_SCALES;
			b->channels = 4;
			b->audios = 0;
			b->maxwidth = 640;
			b->maxheight = 480;
			b->minwidth = 16;
			b->minheight = 16;
			return 0;
		}
		case VIDIOCGCHAN:
		{
			struct video_channel *v = arg;
			if(v->channel<0 || v->channel>3)
				return -EINVAL;
			v->flags=0;
			v->tuners=1;
			/* Good question.. its composite or SVHS so.. */
			v->type = VIDEO_TYPE_CAMERA;
			switch(v->channel)
			{
				case 0:
					FUNC13(v->name, "Composite");break;
				case 1:
					FUNC13(v->name, "SVideo");break;
				case 2:
					FUNC13(v->name, "Composite(VCR)");break;
				case 3:
					FUNC13(v->name, "SVideo(VCR)");break;
			}
			return 0;
		}
		case VIDIOCSCHAN:
		{
			struct video_channel *v = arg;
			if(v->channel<0 || v->channel>3)
				return -EINVAL;
			FUNC1(&pd->lock);
			FUNC12(v->channel&1);
			FUNC11(v->channel>>1);
			FUNC2(&pd->lock);
			return 0;
		}
		case VIDIOCGTUNER:
		{
			struct video_tuner *v = arg;
			if(v->tuner)
				return -EINVAL;
			FUNC13(v->name, "Format");
			v->rangelow=0;
			v->rangehigh=0;
			v->flags= VIDEO_TUNER_PAL|VIDEO_TUNER_NTSC|VIDEO_TUNER_SECAM;
			switch(standard)
			{
				case 0:
					v->mode = VIDEO_MODE_AUTO;
					break;
				case 1:
					v->mode = VIDEO_MODE_NTSC;
					break;
				case 2:
					v->mode = VIDEO_MODE_PAL;
					break;
				case 3:
					v->mode = VIDEO_MODE_SECAM;
					break;
			}
			return 0;
		}
		case VIDIOCSTUNER:
		{
			struct video_tuner *v = arg;
			if(v->tuner)
				return -EINVAL;
			FUNC1(&pd->lock);
			switch(v->mode)
			{
				case VIDEO_MODE_AUTO:
					FUNC7(25);
					FUNC10(0);
					FUNC6(0);
					break;
				case VIDEO_MODE_NTSC:
					FUNC7(30);
					FUNC10(0);
					FUNC6(1);
					break;
				case VIDEO_MODE_PAL:
					FUNC7(25);
					FUNC10(0);
					FUNC6(2);
					break;
				case VIDEO_MODE_SECAM:
					FUNC7(25);
					FUNC10(1);
					FUNC6(2);
					break;
				default:
					FUNC2(&pd->lock);
					return -EINVAL;
			}
			FUNC2(&pd->lock);
			return 0;
		}
		case VIDIOCGPICT:
		{
			struct video_picture *p = arg;
			*p = pd->picture;
			return 0;
		}
		case VIDIOCSPICT:
		{
			struct video_picture *p = arg;
			if(!((p->palette==VIDEO_PALETTE_RGB565 && p->depth==16)
			    ||(p->palette==VIDEO_PALETTE_RGB555 && p->depth==15)))
				return -EINVAL;
			pd->picture= *p;

			/*
			 *	Now load the card.
			 */

			FUNC1(&pd->lock);
			FUNC3(p->brightness>>8);
			FUNC8(p->hue>>8);
			FUNC4(p->colour>>8);
			FUNC5(p->contrast>>8);
			FUNC2(&pd->lock);
			return 0;
		}
		case VIDIOCSWIN:
		{
			struct video_window *vw = arg;
			if(vw->flags)
				return -EINVAL;
			if(vw->clipcount)
				return -EINVAL;
			if(vw->height<16||vw->height>480)
				return -EINVAL;
			if(vw->width<16||vw->width>640)
				return -EINVAL;
			pd->width=vw->width;
			pd->height=vw->height;
			FUNC1(&pd->lock);
			FUNC9(pd->width, pd->height);
			FUNC2(&pd->lock);			/* Ok we figured out what to use from our wide choice */
			return 0;
		}
		case VIDIOCGWIN:
		{
			struct video_window *vw = arg;
			FUNC0(vw,0,sizeof(*vw));
			vw->width=pd->width;
			vw->height=pd->height;
			return 0;
		}
		case VIDIOCKEY:
			return 0;
		case VIDIOCCAPTURE:
		case VIDIOCGFBUF:
		case VIDIOCSFBUF:
		case VIDIOCGFREQ:
		case VIDIOCSFREQ:
		case VIDIOCGAUDIO:
		case VIDIOCSAUDIO:
			return -EINVAL;
		default:
			return -ENOIOCTLCMD;
	}
	return 0;
}