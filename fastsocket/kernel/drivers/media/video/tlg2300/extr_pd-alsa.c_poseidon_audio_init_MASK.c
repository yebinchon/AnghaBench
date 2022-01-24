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
struct snd_pcm {int /*<<< orphan*/  name; struct poseidon* private_data; scalar_t__ info_flags; } ;
struct snd_card {int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; } ;
struct poseidon_audio {struct snd_card* card; } ;
struct poseidon {struct poseidon_audio audio; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  pcm_capture_ops ; 
 int FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_card**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*) ; 
 scalar_t__ FUNC2 (struct snd_card*) ; 
 int FUNC3 (struct snd_card*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct poseidon *p)
{
	struct poseidon_audio *pa = &p->audio;
	struct snd_card *card;
	struct snd_pcm *pcm;
	int ret;

	ret = FUNC0(-1, "Telegent", THIS_MODULE, 0, &card);
	if (ret != 0)
		return ret;

	ret = FUNC3(card, "poseidon audio", 0, 0, 1, &pcm);
	FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE, &pcm_capture_ops);
	pcm->info_flags   = 0;
	pcm->private_data = p;
	FUNC5(pcm->name, "poseidon audio capture");

	FUNC5(card->driver, "ALSA driver");
	FUNC5(card->shortname, "poseidon Audio");
	FUNC5(card->longname, "poseidon ALSA Audio");

	if (FUNC2(card)) {
		FUNC1(card);
		return -ENOMEM;
	}
	pa->card = card;
	return 0;
}