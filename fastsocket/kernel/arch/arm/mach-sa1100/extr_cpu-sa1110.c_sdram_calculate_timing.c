
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sdram_params {int cas_latency; int trcd; int trp; int twr; int tck; } ;
struct sdram_info {int mdcnfg; int mdrefr; int * mdcas; } ;


 scalar_t__ CPU_REVISION ;
 scalar_t__ CPU_SA1110_B2 ;
 int MDCNFG ;
 int MDREFR ;
 int MDREFR_K1DB2 ;
 int ns_to_cycles (int ,int) ;
 int printk (char*,int,int,int ,int ,int ) ;
 int set_mdcas (int *,int,int) ;

__attribute__((used)) static void
sdram_calculate_timing(struct sdram_info *sd, u_int cpu_khz,
         struct sdram_params *sdram)
{
 u_int mem_khz, sd_khz, trp, twr;

 mem_khz = cpu_khz / 2;
 sd_khz = mem_khz;
 if ((ns_to_cycles(sdram->tck, sd_khz) > 1) ||
     (CPU_REVISION < CPU_SA1110_B2 && sd_khz < 62000))
  sd_khz /= 2;

 sd->mdcnfg = MDCNFG & 0x007f007f;

 twr = ns_to_cycles(sdram->twr, mem_khz);


 trp = ns_to_cycles(sdram->trp, mem_khz) - 1;
 if (trp < 1)
  trp = 1;

 sd->mdcnfg |= trp << 8;
 sd->mdcnfg |= trp << 24;
 sd->mdcnfg |= sdram->cas_latency << 12;
 sd->mdcnfg |= sdram->cas_latency << 28;
 sd->mdcnfg |= twr << 14;
 sd->mdcnfg |= twr << 30;

 sd->mdrefr = MDREFR & 0xffbffff0;
 sd->mdrefr |= 7;

 if (sd_khz != mem_khz)
  sd->mdrefr |= MDREFR_K1DB2;


 set_mdcas(sd->mdcas, sd_khz >= 62000, ns_to_cycles(sdram->trcd, mem_khz));





}
