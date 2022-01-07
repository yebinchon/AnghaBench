
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT_ERR (char*) ;
 int ENODEV ;
 int bt_mrvl_sdio ;
 scalar_t__ sdio_register_driver (int *) ;
 scalar_t__ user_rmmod ;

__attribute__((used)) static int btmrvl_sdio_init_module(void)
{
 if (sdio_register_driver(&bt_mrvl_sdio) != 0) {
  BT_ERR("SDIO Driver Registration Failed");
  return -ENODEV;
 }


 user_rmmod = 0;

 return 0;
}
