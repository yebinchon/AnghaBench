
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int airo_driver ;
 int pcmcia_unregister_driver (int *) ;

__attribute__((used)) static void airo_cs_cleanup(void)
{
 pcmcia_unregister_driver(&airo_driver);
}
