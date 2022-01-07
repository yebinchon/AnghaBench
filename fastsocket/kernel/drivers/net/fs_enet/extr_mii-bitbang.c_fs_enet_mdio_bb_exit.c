
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fs_enet_bb_mdio_driver ;
 int of_unregister_platform_driver (int *) ;

__attribute__((used)) static void fs_enet_mdio_bb_exit(void)
{
 of_unregister_platform_driver(&fs_enet_bb_mdio_driver);
}
