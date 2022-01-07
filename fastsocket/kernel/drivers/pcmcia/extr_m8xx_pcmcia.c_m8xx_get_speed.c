
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ADJ ;
 int PCMCIA_BMT_LIMIT ;
 int printk (char*) ;

__attribute__((used)) static u32 m8xx_get_speed(u32 ns, u32 is_io, u32 bus_freq)
{
 u32 reg, clocks, psst, psl, psht;

 if (!ns) {







  if (is_io)
   ns = 255;
  else
   ns = 100;
 }
 clocks = ((bus_freq / 1000) * ns) / 1000;
 clocks = (clocks * 180) / (100 * 1000);
 if (clocks >= PCMCIA_BMT_LIMIT) {
  printk("Max access time limit reached\n");
  clocks = PCMCIA_BMT_LIMIT - 1;
 }

 psst = clocks / 7;
 psht = clocks / 7;
 psl = (clocks * 5) / 7;

 psst += clocks - (psst + psht + psl);

 reg = psst << 12;
 reg |= psl << 7;
 reg |= psht << 16;

 return reg;
}
