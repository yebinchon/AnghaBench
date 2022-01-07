
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int of_register_platform_driver (int *) ;
 int pmc_driver ;

__attribute__((used)) static int pmc_init(void)
{
 return of_register_platform_driver(&pmc_driver);
}
