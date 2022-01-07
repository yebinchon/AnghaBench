
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_timing {void* attr; void* mem; void* io; } ;
struct soc_pcmcia_socket {int spd_attr; int spd_mem; int spd_io; } ;


 int MAX_IO_WIN ;
 int MAX_WIN ;
 int SOC_PCMCIA_3V_MEM_ACCESS ;
 int SOC_PCMCIA_IO_ACCESS ;
 void* calc_speed (int ,int ,int ) ;

void soc_common_pcmcia_get_timing(struct soc_pcmcia_socket *skt, struct soc_pcmcia_timing *timing)
{
 timing->io = calc_speed(skt->spd_io, MAX_IO_WIN, SOC_PCMCIA_IO_ACCESS);
 timing->mem = calc_speed(skt->spd_mem, MAX_WIN, SOC_PCMCIA_3V_MEM_ACCESS);
 timing->attr = calc_speed(skt->spd_attr, MAX_WIN, SOC_PCMCIA_3V_MEM_ACCESS);
}
