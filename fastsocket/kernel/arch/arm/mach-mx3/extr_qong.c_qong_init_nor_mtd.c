
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_device_register (int *) ;
 int qong_nor_mtd_device ;

__attribute__((used)) static void qong_init_nor_mtd(void)
{
 (void)platform_device_register(&qong_nor_mtd_device);
}
