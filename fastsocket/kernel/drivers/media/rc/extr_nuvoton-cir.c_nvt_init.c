
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nvt_driver ;
 int pnp_register_driver (int *) ;

int nvt_init(void)
{
 return pnp_register_driver(&nvt_driver);
}
