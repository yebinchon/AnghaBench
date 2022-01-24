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
struct v4l2_device {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct cx18* private_data; int /*<<< orphan*/  hw; } ;
struct snd_cx18_card {struct snd_pcm_substream* capture_pcm_substream; struct v4l2_device* v4l2_dev; } ;
struct cx18_stream {int /*<<< orphan*/  s_flags; int /*<<< orphan*/  type; } ;
struct cx18_open_id {int /*<<< orphan*/  type; scalar_t__ open_id; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  pcm_announce_callback; int /*<<< orphan*/  open_id; struct cx18_stream* streams; } ;

/* Variables and functions */
 size_t CX18_ENC_STREAM_TYPE_PCM ; 
 int /*<<< orphan*/  CX18_F_S_STREAMING ; 
 int /*<<< orphan*/  CX18_F_S_STREAMOFF ; 
 int EBUSY ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  cx18_alsa_announce_pcm_data ; 
 scalar_t__ FUNC0 (struct cx18_open_id*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cx18_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_cx18_hw_capture ; 
 int /*<<< orphan*/  FUNC3 (struct snd_cx18_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_cx18_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_cx18_card* FUNC6 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cx18* FUNC9 (struct v4l2_device*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct snd_cx18_card *cxsc = FUNC6(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct v4l2_device *v4l2_dev = cxsc->v4l2_dev;
	struct cx18 *cx = FUNC9(v4l2_dev);
	struct cx18_stream *s;
	struct cx18_open_id item;
	int ret;

	/* Instruct the cx18 to start sending packets */
	FUNC3(cxsc);
	s = &cx->streams[CX18_ENC_STREAM_TYPE_PCM];

	item.cx = cx;
	item.type = s->type;
	item.open_id = cx->open_id++;

	/* See if the stream is available */
	if (FUNC0(&item, item.type)) {
		/* No, it's already in use */
		FUNC4(cxsc);
		return -EBUSY;
	}

	if (FUNC8(CX18_F_S_STREAMOFF, &s->s_flags) ||
	    FUNC7(CX18_F_S_STREAMING, &s->s_flags)) {
		/* We're already streaming.  No additional action required */
		FUNC4(cxsc);
		return 0;
	}


	runtime->hw = snd_cx18_hw_capture;
	FUNC5(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
	cxsc->capture_pcm_substream = substream;
	runtime->private_data = cx;

	cx->pcm_announce_callback = cx18_alsa_announce_pcm_data;

	/* Not currently streaming, so start it up */
	FUNC2(CX18_F_S_STREAMING, &s->s_flags);
	ret = FUNC1(s);
	FUNC4(cxsc);

	return 0;
}