
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int gpio_dir; int gpio_val; } ;
struct dib8000_state {TYPE_1__ cfg; } ;


 void* dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*,int,int) ;

__attribute__((used)) static int dib8000_cfg_gpio(struct dib8000_state *st, u8 num, u8 dir, u8 val)
{
 st->cfg.gpio_dir = dib8000_read_word(st, 1029);
 st->cfg.gpio_dir &= ~(1 << num);
 st->cfg.gpio_dir |= (dir & 0x1) << num;
 dib8000_write_word(st, 1029, st->cfg.gpio_dir);

 st->cfg.gpio_val = dib8000_read_word(st, 1030);
 st->cfg.gpio_val &= ~(1 << num);
 st->cfg.gpio_val |= (val & 0x01) << num;
 dib8000_write_word(st, 1030, st->cfg.gpio_val);

 dprintk("gpio dir: %x: gpio val: %x", st->cfg.gpio_dir, st->cfg.gpio_val);

 return 0;
}
