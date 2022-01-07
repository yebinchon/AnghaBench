
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ frame_irq; } ;
struct bttv {unsigned int input; unsigned int new_input; scalar_t__ tuner_type; int s_lock; TYPE_1__ curr; } ;


 scalar_t__ TUNER_ABSENT ;
 int TVAUDIO_INPUT_EXTERN ;
 int TVAUDIO_INPUT_TUNER ;
 int audio_input (struct bttv*,int ) ;
 scalar_t__ irq_iswitch ;
 int set_tvnorm (struct bttv*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int video_mux (struct bttv*,unsigned int) ;

__attribute__((used)) static void
set_input(struct bttv *btv, unsigned int input, unsigned int norm)
{
 unsigned long flags;

 btv->input = input;
 if (irq_iswitch) {
  spin_lock_irqsave(&btv->s_lock,flags);
  if (btv->curr.frame_irq) {

   btv->new_input = input;
  } else {
   video_mux(btv,input);
  }
  spin_unlock_irqrestore(&btv->s_lock,flags);
 } else {
  video_mux(btv,input);
 }
 audio_input(btv, (btv->tuner_type != TUNER_ABSENT && input == 0) ?
    TVAUDIO_INPUT_TUNER : TVAUDIO_INPUT_EXTERN);
 set_tvnorm(btv, norm);
}
