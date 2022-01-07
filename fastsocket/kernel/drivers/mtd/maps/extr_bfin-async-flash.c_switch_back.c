
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_state {int irq_flags; int enet_flash_pin; int save_ambctl1; int save_ambctl0; } ;


 int SSYNC () ;
 int bfin_write_EBIU_AMBCTL0 (int ) ;
 int bfin_write_EBIU_AMBCTL1 (int ) ;
 int gpio_set_value (int ,int) ;
 int local_irq_restore (int ) ;

__attribute__((used)) static void switch_back(struct async_state *state)
{
 bfin_write_EBIU_AMBCTL0(state->save_ambctl0);
 bfin_write_EBIU_AMBCTL1(state->save_ambctl1);
 SSYNC();

 gpio_set_value(state->enet_flash_pin, 1);

 local_irq_restore(state->irq_flags);
}
