
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int b43_pcmcia_driver ;
 int pcmcia_register_driver (int *) ;

int b43_pcmcia_init(void)
{
 return pcmcia_register_driver(&b43_pcmcia_driver);
}
