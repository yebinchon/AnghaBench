
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 unsigned int sa1100_pcmcia_mecr_bs (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int
sa1100_pcmcia_default_mecr_timing(struct soc_pcmcia_socket *skt,
      unsigned int cpu_speed,
      unsigned int cmd_time)
{
 return sa1100_pcmcia_mecr_bs(cmd_time, cpu_speed);
}
