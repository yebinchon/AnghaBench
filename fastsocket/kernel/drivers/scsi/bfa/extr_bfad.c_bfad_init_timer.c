
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; int function; } ;
struct bfad_s {TYPE_1__ hal_tmo; } ;


 int BFA_TIMER_FREQ ;
 int bfad_bfa_tmo ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

void
bfad_init_timer(struct bfad_s *bfad)
{
 init_timer(&bfad->hal_tmo);
 bfad->hal_tmo.function = bfad_bfa_tmo;
 bfad->hal_tmo.data = (unsigned long)bfad;

 mod_timer(&bfad->hal_tmo,
    jiffies + msecs_to_jiffies(BFA_TIMER_FREQ));
}
