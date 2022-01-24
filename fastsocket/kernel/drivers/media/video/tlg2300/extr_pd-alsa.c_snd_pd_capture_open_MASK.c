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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; struct poseidon* private_data; } ;
struct poseidon_audio {struct snd_pcm_substream* capture_pcm_substream; scalar_t__ card_close; int /*<<< orphan*/  users; } ;
struct poseidon {int /*<<< orphan*/  kref; int /*<<< orphan*/  interface; struct poseidon_audio audio; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct poseidon* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  snd_pd_hw_capture ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct poseidon *p = FUNC2(substream);
	struct poseidon_audio *pa = &p->audio;
	struct snd_pcm_runtime *runtime = substream->runtime;

	if (!p)
		return -ENODEV;
	pa->users++;
	pa->card_close 		= 0;
	pa->capture_pcm_substream	= substream;
	runtime->private_data		= p;

	runtime->hw = snd_pd_hw_capture;
	FUNC1(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
	FUNC3(p->interface);
	FUNC0(&p->kref);
	return 0;
}