
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bt_mrvl_sdio ;
 int sdio_unregister_driver (int *) ;
 int user_rmmod ;

__attribute__((used)) static void btmrvl_sdio_exit_module(void)
{

 user_rmmod = 1;

 sdio_unregister_driver(&bt_mrvl_sdio);
}
