
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int * private_data; } ;
typedef int snd_cx88_card_t ;


 int snd_cx88_free (int *) ;

__attribute__((used)) static void snd_cx88_dev_free(struct snd_card * card)
{
 snd_cx88_card_t *chip = card->private_data;

 snd_cx88_free(chip);
}
