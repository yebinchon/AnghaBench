
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct poseidon {int dummy; } ;


 int audio_buf_free (struct poseidon*) ;
 int logpm () ;
 struct poseidon* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pd_hw_capture_free(struct snd_pcm_substream *substream)
{
 struct poseidon *p = snd_pcm_substream_chip(substream);

 logpm();
 audio_buf_free(p);
 return 0;
}
