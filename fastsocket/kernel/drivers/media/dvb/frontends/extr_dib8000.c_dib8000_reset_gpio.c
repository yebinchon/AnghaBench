
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pwm_freq_div; int gpio_pwm_pos; int gpio_val; int gpio_dir; } ;
struct dib8000_state {TYPE_1__ cfg; } ;


 int dib8000_write_word (struct dib8000_state*,int,int ) ;

__attribute__((used)) static int dib8000_reset_gpio(struct dib8000_state *st)
{

 dib8000_write_word(st, 1029, st->cfg.gpio_dir);
 dib8000_write_word(st, 1030, st->cfg.gpio_val);



 dib8000_write_word(st, 1032, st->cfg.gpio_pwm_pos);

 dib8000_write_word(st, 1037, st->cfg.pwm_freq_div);
 return 0;
}
