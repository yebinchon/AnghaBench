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
struct urb {scalar_t__ status; scalar_t__ actual_length; struct poseidon_audio* context; } ;
struct snd_pcm_substream {int dummy; } ;
struct poseidon_audio {int card_close; scalar_t__ capture_stream; struct snd_pcm_substream* capture_pcm_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ STREAM_ON ; 
 int /*<<< orphan*/  FUNC0 (struct urb*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int FUNC3 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct poseidon_audio *pa = urb->context;
	struct snd_pcm_substream *substream = pa->capture_pcm_substream;
	int    period_elapsed = 0;
	int    ret;

	if (1 == pa->card_close || pa->capture_stream != STREAM_ON)
		return;

	if (urb->status != 0) {
		/*if (urb->status == -ESHUTDOWN)*/
			return;
	}

	if (substream) {
		if (urb->actual_length) {
			FUNC0(urb, &period_elapsed);
			if (period_elapsed)
				FUNC2(substream);
		}
	}

	ret = FUNC3(urb, GFP_ATOMIC);
	if (ret < 0)
		FUNC1("audio urb failed (errcod = %i)", ret);
	return;
}