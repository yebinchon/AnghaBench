
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atmel_driver ;
 int pcmcia_register_driver (int *) ;

__attribute__((used)) static int atmel_cs_init(void)
{
        return pcmcia_register_driver(&atmel_driver);
}
