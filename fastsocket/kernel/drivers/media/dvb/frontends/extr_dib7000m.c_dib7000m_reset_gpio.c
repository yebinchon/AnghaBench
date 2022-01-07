
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pwm_freq_div; int gpio_pwm_pos; int gpio_val; int gpio_dir; } ;
struct dib7000m_state {TYPE_1__ cfg; } ;


 int dib7000m_write_word (struct dib7000m_state*,int,int ) ;

__attribute__((used)) static int dib7000m_reset_gpio(struct dib7000m_state *st)
{

 dib7000m_write_word(st, 773, st->cfg.gpio_dir);
 dib7000m_write_word(st, 774, st->cfg.gpio_val);



 dib7000m_write_word(st, 775, st->cfg.gpio_pwm_pos);

 dib7000m_write_word(st, 780, st->cfg.pwm_freq_div);
 return 0;
}
