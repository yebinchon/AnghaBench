
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int b43_pcmcia_driver ;
 int pcmcia_unregister_driver (int *) ;

void b43_pcmcia_exit(void)
{
 pcmcia_unregister_driver(&b43_pcmcia_driver);
}
