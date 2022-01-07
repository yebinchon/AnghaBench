
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsl_pq_mdio_driver ;
 int of_unregister_platform_driver (int *) ;

void fsl_pq_mdio_exit(void)
{
 of_unregister_platform_driver(&fsl_pq_mdio_driver);
}
