
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 unsigned long ESTAR_MODE_DIV_2 ;
 unsigned long ESTAR_MODE_DIV_MASK ;
 int HBIRD_ESTAR_MODE_ADDR ;
 int frob_mem_refresh (int,unsigned long,unsigned long,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int self_refresh_ctl (int) ;
 int write_hbreg (int ,unsigned long) ;

__attribute__((used)) static void us2e_transition(unsigned long estar, unsigned long new_bits,
       unsigned long clock_tick,
       unsigned long old_divisor, unsigned long divisor)
{
 unsigned long flags;

 local_irq_save(flags);

 estar &= ~ESTAR_MODE_DIV_MASK;


 if (old_divisor == 2 && divisor == 1) {
  self_refresh_ctl(0);
  write_hbreg(HBIRD_ESTAR_MODE_ADDR, estar | new_bits);
  frob_mem_refresh(0, clock_tick, old_divisor, divisor);
 } else if (old_divisor == 1 && divisor == 2) {
  frob_mem_refresh(1, clock_tick, old_divisor, divisor);
  write_hbreg(HBIRD_ESTAR_MODE_ADDR, estar | new_bits);
  self_refresh_ctl(1);
 } else if (old_divisor == 1 && divisor > 2) {
  us2e_transition(estar, ESTAR_MODE_DIV_2, clock_tick,
    1, 2);
  us2e_transition(estar, new_bits, clock_tick,
    2, divisor);
 } else if (old_divisor > 2 && divisor == 1) {
  us2e_transition(estar, ESTAR_MODE_DIV_2, clock_tick,
    old_divisor, 2);
  us2e_transition(estar, new_bits, clock_tick,
    2, divisor);
 } else if (old_divisor < divisor) {
  frob_mem_refresh(0, clock_tick, old_divisor, divisor);
  write_hbreg(HBIRD_ESTAR_MODE_ADDR, estar | new_bits);
 } else if (old_divisor > divisor) {
  write_hbreg(HBIRD_ESTAR_MODE_ADDR, estar | new_bits);
  frob_mem_refresh(1, clock_tick, old_divisor, divisor);
 } else {
  BUG();
 }

 local_irq_restore(flags);
}
