
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int audio; } ;


 int audio_mux (struct bttv*,int ,int) ;

__attribute__((used)) static inline int
audio_mute(struct bttv *btv, int mute)
{
 return audio_mux(btv, btv->audio, mute);
}
