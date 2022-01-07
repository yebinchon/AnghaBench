
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cx88_core {int dummy; } ;
struct TYPE_7__ {int reg_lock; struct cx88_core* core; } ;
typedef TYPE_3__ snd_cx88_card_t ;


 int AUD_VOL_CTL ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 TYPE_3__* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cx88_switch_put(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *value)
{
 snd_cx88_card_t *chip = snd_kcontrol_chip(kcontrol);
 struct cx88_core *core = chip->core;
 u32 bit = kcontrol->private_value;
 int ret = 0;
 u32 vol;

 spin_lock_irq(&chip->reg_lock);
 vol = cx_read(AUD_VOL_CTL);
 if (value->value.integer.value[0] != !(vol & bit)) {
  vol ^= bit;
  cx_write(AUD_VOL_CTL, vol);
  ret = 1;
 }
 spin_unlock_irq(&chip->reg_lock);
 return ret;
}
