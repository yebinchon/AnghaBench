
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aic7770_driver ;
 int eisa_driver_register (int *) ;

int
ahc_linux_eisa_init(void)
{
 return eisa_driver_register(&aic7770_driver);
}
