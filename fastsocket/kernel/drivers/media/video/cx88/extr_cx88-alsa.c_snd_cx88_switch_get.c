
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
struct TYPE_7__ {struct cx88_core* core; } ;
typedef TYPE_3__ snd_cx88_card_t ;


 int AUD_VOL_CTL ;
 int cx_read (int ) ;
 TYPE_3__* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_cx88_switch_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *value)
{
 snd_cx88_card_t *chip = snd_kcontrol_chip(kcontrol);
 struct cx88_core *core = chip->core;
 u32 bit = kcontrol->private_value;

 value->value.integer.value[0] = !(cx_read(AUD_VOL_CTL) & bit);
 return 0;
}
