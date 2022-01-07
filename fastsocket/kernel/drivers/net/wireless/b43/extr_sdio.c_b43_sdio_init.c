
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int b43_sdio_driver ;
 int sdio_register_driver (int *) ;

int b43_sdio_init(void)
{
 return sdio_register_driver(&b43_sdio_driver);
}
