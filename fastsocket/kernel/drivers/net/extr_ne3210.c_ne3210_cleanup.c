
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eisa_driver_unregister (int *) ;
 int ne3210_eisa_driver ;

__attribute__((used)) static void ne3210_cleanup(void)
{
 eisa_driver_unregister (&ne3210_eisa_driver);
}
