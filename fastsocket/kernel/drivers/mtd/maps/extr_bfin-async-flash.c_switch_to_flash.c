
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_state {int flash_ambctl1; int flash_ambctl0; int save_ambctl1; int save_ambctl0; int enet_flash_pin; int irq_flags; } ;


 int SSYNC () ;
 int bfin_read_EBIU_AMBCTL0 () ;
 int bfin_read_EBIU_AMBCTL1 () ;
 int bfin_write_EBIU_AMBCTL0 (int ) ;
 int bfin_write_EBIU_AMBCTL1 (int ) ;
 int gpio_set_value (int ,int ) ;
 int local_irq_save (int ) ;

__attribute__((used)) static void switch_to_flash(struct async_state *state)
{
 local_irq_save(state->irq_flags);

 gpio_set_value(state->enet_flash_pin, 0);

 state->save_ambctl0 = bfin_read_EBIU_AMBCTL0();
 state->save_ambctl1 = bfin_read_EBIU_AMBCTL1();
 bfin_write_EBIU_AMBCTL0(state->flash_ambctl0);
 bfin_write_EBIU_AMBCTL1(state->flash_ambctl1);
 SSYNC();
}
