
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nvt_driver ;
 int pnp_unregister_driver (int *) ;

void nvt_exit(void)
{
 pnp_unregister_driver(&nvt_driver);
}
