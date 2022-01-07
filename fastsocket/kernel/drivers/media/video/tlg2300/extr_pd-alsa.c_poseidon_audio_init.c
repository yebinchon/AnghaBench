
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; struct poseidon* private_data; scalar_t__ info_flags; } ;
struct snd_card {int longname; int shortname; int driver; } ;
struct poseidon_audio {struct snd_card* card; } ;
struct poseidon {struct poseidon_audio audio; } ;


 int ENOMEM ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int THIS_MODULE ;
 int pcm_capture_ops ;
 int snd_card_create (int,char*,int ,int ,struct snd_card**) ;
 int snd_card_free (struct snd_card*) ;
 scalar_t__ snd_card_register (struct snd_card*) ;
 int snd_pcm_new (struct snd_card*,char*,int ,int ,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

int poseidon_audio_init(struct poseidon *p)
{
 struct poseidon_audio *pa = &p->audio;
 struct snd_card *card;
 struct snd_pcm *pcm;
 int ret;

 ret = snd_card_create(-1, "Telegent", THIS_MODULE, 0, &card);
 if (ret != 0)
  return ret;

 ret = snd_pcm_new(card, "poseidon audio", 0, 0, 1, &pcm);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &pcm_capture_ops);
 pcm->info_flags = 0;
 pcm->private_data = p;
 strcpy(pcm->name, "poseidon audio capture");

 strcpy(card->driver, "ALSA driver");
 strcpy(card->shortname, "poseidon Audio");
 strcpy(card->longname, "poseidon ALSA Audio");

 if (snd_card_register(card)) {
  snd_card_free(card);
  return -ENOMEM;
 }
 pa->card = card;
 return 0;
}
