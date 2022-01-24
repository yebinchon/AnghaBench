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
struct video_device {int vfl_type; } ;
struct file {struct cx8800_fh* private_data; } ;
struct TYPE_5__ {scalar_t__ audioroute; int /*<<< orphan*/  gpio2; int /*<<< orphan*/  gpio1; int /*<<< orphan*/  gpio0; int /*<<< orphan*/  gpio3; } ;
struct TYPE_6__ {scalar_t__ audio_chip; TYPE_2__ radio; } ;
struct cx88_core {int /*<<< orphan*/  lock; int /*<<< orphan*/  users; int /*<<< orphan*/  tvaudio; TYPE_3__ board; } ;
struct cx88_buffer {int dummy; } ;
struct cx8800_fh {int radio; int type; int width; int height; int /*<<< orphan*/  vbiq; int /*<<< orphan*/  vidq; int /*<<< orphan*/  fmt; struct cx8800_dev* dev; } ;
struct cx8800_dev {int /*<<< orphan*/  slock; TYPE_1__* pci; struct cx88_core* core; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MO_GP0_IO ; 
 int /*<<< orphan*/  MO_GP1_IO ; 
 int /*<<< orphan*/  MO_GP2_IO ; 
 int /*<<< orphan*/  MO_GP3_IO ; 
 int V4L2_BUF_TYPE_VBI_CAPTURE ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  V4L2_FIELD_SEQ_TB ; 
 scalar_t__ V4L2_IDENT_WM8775 ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_BGR24 ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_STEREO ; 
#define  VFL_TYPE_GRABBER 130 
#define  VFL_TYPE_RADIO 129 
#define  VFL_TYPE_VBI 128 
 int /*<<< orphan*/  WW_FM ; 
 int /*<<< orphan*/  WW_I2SADC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audio ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  cx8800_vbi_qops ; 
 int /*<<< orphan*/  cx8800_video_qops ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct cx8800_fh* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_radio ; 
 int /*<<< orphan*/  s_routing ; 
 int /*<<< orphan*/  tuner ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/ * v4l2_type_names ; 
 struct video_device* FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (struct video_device*) ; 
 struct cx8800_dev* FUNC13 (struct file*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,struct cx8800_fh*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct file *file)
{
	struct video_device *vdev = FUNC11(file);
	struct cx8800_dev *dev = FUNC13(file);
	struct cx88_core *core = dev->core;
	struct cx8800_fh *fh;
	enum v4l2_buf_type type = 0;
	int radio = 0;

	switch (vdev->vfl_type) {
	case VFL_TYPE_GRABBER:
		type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
		break;
	case VFL_TYPE_VBI:
		type = V4L2_BUF_TYPE_VBI_CAPTURE;
		break;
	case VFL_TYPE_RADIO:
		radio = 1;
		break;
	}

	FUNC5(1, "open dev=%s radio=%d type=%s\n",
		FUNC12(vdev), radio, v4l2_type_names[type]);

	/* allocate + initialize per filehandle data */
	fh = FUNC7(sizeof(*fh),GFP_KERNEL);
	if (FUNC10(!fh))
		return -ENOMEM;

	file->private_data = fh;
	fh->dev      = dev;
	fh->radio    = radio;
	fh->type     = type;
	fh->width    = 320;
	fh->height   = 240;
	fh->fmt      = FUNC6(V4L2_PIX_FMT_BGR24);

	FUNC8(&core->lock);

	FUNC14(&fh->vidq, &cx8800_video_qops,
			    &dev->pci->dev, &dev->slock,
			    V4L2_BUF_TYPE_VIDEO_CAPTURE,
			    V4L2_FIELD_INTERLACED,
			    sizeof(struct cx88_buffer),
			    fh, NULL);
	FUNC14(&fh->vbiq, &cx8800_vbi_qops,
			    &dev->pci->dev, &dev->slock,
			    V4L2_BUF_TYPE_VBI_CAPTURE,
			    V4L2_FIELD_SEQ_TB,
			    sizeof(struct cx88_buffer),
			    fh, NULL);

	if (fh->radio) {
		FUNC5(1,"video_open: setting radio device\n");
		FUNC4(MO_GP3_IO, core->board.radio.gpio3);
		FUNC4(MO_GP0_IO, core->board.radio.gpio0);
		FUNC4(MO_GP1_IO, core->board.radio.gpio1);
		FUNC4(MO_GP2_IO, core->board.radio.gpio2);
		if (core->board.radio.audioroute) {
			if(core->board.audio_chip &&
				core->board.audio_chip == V4L2_IDENT_WM8775) {
				FUNC1(core, audio, s_routing,
					core->board.radio.audioroute, 0, 0);
			}
			/* "I2S ADC mode" */
			core->tvaudio = WW_I2SADC;
			FUNC3(core);
		} else {
			/* FM Mode */
			core->tvaudio = WW_FM;
			FUNC3(core);
			FUNC2(core,V4L2_TUNER_MODE_STEREO,1);
		}
		FUNC1(core, tuner, s_radio);
	}

	FUNC0(&core->users);
	FUNC9(&core->lock);

	return 0;
}