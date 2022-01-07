
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pwm_freq_div; int gpio_pwm_pos; } ;
struct dib7000p_state {TYPE_1__ cfg; int gpio_val; int gpio_dir; } ;


 int dib7000p_write_word (struct dib7000p_state*,int,int ) ;
 int dprintk (char*,int ,int ,int ) ;

__attribute__((used)) static int dib7000p_reset_gpio(struct dib7000p_state *st)
{

 dprintk( "gpio dir: %x: val: %x, pwm_pos: %x",st->gpio_dir, st->gpio_val,st->cfg.gpio_pwm_pos);

 dib7000p_write_word(st, 1029, st->gpio_dir);
 dib7000p_write_word(st, 1030, st->gpio_val);



 dib7000p_write_word(st, 1032, st->cfg.gpio_pwm_pos);

 dib7000p_write_word(st, 1037, st->cfg.pwm_freq_div);
 return 0;
}
