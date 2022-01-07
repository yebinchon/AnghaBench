
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NR_BANKS ;
 int bank_map ;
 int per_cpu (int ,unsigned int) ;
 int threshold_remove_bank (unsigned int,unsigned int) ;

__attribute__((used)) static void threshold_remove_device(unsigned int cpu)
{
 unsigned int bank;

 for (bank = 0; bank < NR_BANKS; ++bank) {
  if (!(per_cpu(bank_map, cpu) & (1 << bank)))
   continue;
  threshold_remove_bank(cpu, bank);
 }
}
