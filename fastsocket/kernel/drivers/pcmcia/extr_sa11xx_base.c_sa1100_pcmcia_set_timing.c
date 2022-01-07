
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int cpufreq_get (int ) ;
 int sa1100_pcmcia_set_mecr (struct soc_pcmcia_socket*,int ) ;

__attribute__((used)) static int
sa1100_pcmcia_set_timing(struct soc_pcmcia_socket *skt)
{
 return sa1100_pcmcia_set_mecr(skt, cpufreq_get(0));
}
