
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fs_enet_bb_mdio_driver ;
 int of_register_platform_driver (int *) ;

__attribute__((used)) static int fs_enet_mdio_bb_init(void)
{
 return of_register_platform_driver(&fs_enet_bb_mdio_driver);
}
