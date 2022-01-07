
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int mute; } ;


 int audio_mux (struct bttv*,int,int ) ;

__attribute__((used)) static inline int
audio_input(struct bttv *btv, int input)
{
 return audio_mux(btv, input, btv->mute);
}
