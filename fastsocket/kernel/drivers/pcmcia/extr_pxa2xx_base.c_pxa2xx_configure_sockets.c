
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_low_level {int first; int nr; } ;
struct device {struct pcmcia_low_level* platform_data; } ;


 int MECR ;
 int MECR_CIT ;
 int MECR_NOS ;
 scalar_t__ machine_is_viper () ;

__attribute__((used)) static void pxa2xx_configure_sockets(struct device *dev)
{
 struct pcmcia_low_level *ops = dev->platform_data;





 MECR |= MECR_CIT;


 if ((ops->first + ops->nr) > 1 || machine_is_viper())
  MECR |= MECR_NOS;
 else
  MECR &= ~MECR_NOS;
}
