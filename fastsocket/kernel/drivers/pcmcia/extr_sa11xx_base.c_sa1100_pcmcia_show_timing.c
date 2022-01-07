
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_timing {int io; int attr; int mem; } ;
struct soc_pcmcia_socket {int nr; } ;


 unsigned long MECR ;
 int MECR_BSA_GET (unsigned long,int ) ;
 int MECR_BSIO_GET (unsigned long,int ) ;
 int MECR_BSM_GET (unsigned long,int ) ;
 unsigned int cpufreq_get (int ) ;
 int sa1100_pcmcia_cmd_time (unsigned int,int ) ;
 int soc_common_pcmcia_get_timing (struct soc_pcmcia_socket*,struct soc_pcmcia_timing*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static int
sa1100_pcmcia_show_timing(struct soc_pcmcia_socket *skt, char *buf)
{
 struct soc_pcmcia_timing timing;
 unsigned int clock = cpufreq_get(0);
 unsigned long mecr = MECR;
 char *p = buf;

 soc_common_pcmcia_get_timing(skt, &timing);

 p+=sprintf(p, "I/O      : %u (%u)\n", timing.io,
     sa1100_pcmcia_cmd_time(clock, MECR_BSIO_GET(mecr, skt->nr)));

 p+=sprintf(p, "attribute: %u (%u)\n", timing.attr,
     sa1100_pcmcia_cmd_time(clock, MECR_BSA_GET(mecr, skt->nr)));

 p+=sprintf(p, "common   : %u (%u)\n", timing.mem,
     sa1100_pcmcia_cmd_time(clock, MECR_BSM_GET(mecr, skt->nr)));

 return p - buf;
}
