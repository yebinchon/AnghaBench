
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct poseidon_audio {int rcv_position; } ;
struct poseidon {struct poseidon_audio audio; } ;
typedef int snd_pcm_uframes_t ;


 struct poseidon* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_pd_capture_pointer(struct snd_pcm_substream *substream)
{
 struct poseidon *p = snd_pcm_substream_chip(substream);
 struct poseidon_audio *pa = &p->audio;
 return pa->rcv_position;
}
