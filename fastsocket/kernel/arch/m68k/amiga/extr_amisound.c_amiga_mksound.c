
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sine_data ;
struct TYPE_8__ {int dmacon; TYPE_1__* aud; } ;
struct TYPE_7__ {scalar_t__ expires; } ;
struct TYPE_6__ {int audlen; unsigned short audper; int audvol; scalar_t__ audlc; } ;


 int DMAF_AUD2 ;
 int DMAF_SETCLR ;
 unsigned long MAX_PERIOD ;
 int add_timer (TYPE_2__*) ;
 unsigned long amiga_audio_min_period ;
 unsigned int clock_constant ;
 TYPE_4__ custom ;
 int del_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int nosound (int ) ;
 scalar_t__ snd_data ;
 TYPE_2__ sound_timer ;

void amiga_mksound( unsigned int hz, unsigned int ticks )
{
 unsigned long flags;

 if (!snd_data)
  return;

 local_irq_save(flags);
 del_timer( &sound_timer );

 if (hz > 20 && hz < 32767) {
  unsigned long period = (clock_constant / hz);

  if (period < amiga_audio_min_period)
   period = amiga_audio_min_period;
  if (period > MAX_PERIOD)
   period = MAX_PERIOD;


  custom.aud[2].audlc = snd_data;
  custom.aud[2].audlen = sizeof(sine_data)/2;
  custom.aud[2].audper = (unsigned short)period;
  custom.aud[2].audvol = 32;

  if (ticks) {
   sound_timer.expires = jiffies + ticks;
   add_timer( &sound_timer );
  }


  custom.dmacon = DMAF_SETCLR | DMAF_AUD2;

 } else
  nosound( 0 );

 local_irq_restore(flags);
}
