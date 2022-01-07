
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_init {int dummy; } ;


 int PCMCIA_NUM_SOCKS ;

__attribute__((used)) static int xxs1500_pcmcia_init(struct pcmcia_init *init)
{
 return PCMCIA_NUM_SOCKS;
}
