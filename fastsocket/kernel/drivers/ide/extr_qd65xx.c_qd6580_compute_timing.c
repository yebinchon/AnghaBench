
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IDE_IN (int,int,int) ;
 int ide_vlb_clk ;

__attribute__((used)) static u8 qd6580_compute_timing (int active_time, int recovery_time)
{
 int clk = ide_vlb_clk ? ide_vlb_clk : 50;
 u8 act_cyc, rec_cyc;

 act_cyc = 17 - IDE_IN(active_time * clk / 1000 + 1, 2, 17);
 rec_cyc = 15 - IDE_IN(recovery_time * clk / 1000 + 1, 2, 15);

 return (rec_cyc << 4) | act_cyc;
}
