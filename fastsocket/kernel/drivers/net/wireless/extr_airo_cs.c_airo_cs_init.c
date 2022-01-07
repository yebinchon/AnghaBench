
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int airo_driver ;
 int pcmcia_register_driver (int *) ;

__attribute__((used)) static int airo_cs_init(void)
{
 return pcmcia_register_driver(&airo_driver);
}
