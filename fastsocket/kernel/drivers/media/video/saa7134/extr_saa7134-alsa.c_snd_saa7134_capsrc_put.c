
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int snd_saa7134_capsrc_set (struct snd_kcontrol*,int,int,int) ;

__attribute__((used)) static int snd_saa7134_capsrc_put(struct snd_kcontrol * kcontrol,
      struct snd_ctl_elem_value * ucontrol)
{
 int left, right;
 left = ucontrol->value.integer.value[0] & 1;
 right = ucontrol->value.integer.value[1] & 1;

 return snd_saa7134_capsrc_set(kcontrol, left, right, 0);
}
