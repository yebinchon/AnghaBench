
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eisa_driver_register (int *) ;
 int ne3210_eisa_driver ;

__attribute__((used)) static int ne3210_init(void)
{
 return eisa_driver_register (&ne3210_eisa_driver);
}
