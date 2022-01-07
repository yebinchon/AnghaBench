
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int vpfe_driver ;

__attribute__((used)) static void vpfe_cleanup(void)
{
 platform_driver_unregister(&vpfe_driver);
}
