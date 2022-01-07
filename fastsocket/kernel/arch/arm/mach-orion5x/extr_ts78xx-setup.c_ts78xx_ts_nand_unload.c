
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_device_del (int *) ;
 int ts78xx_ts_nand_device ;

__attribute__((used)) static void ts78xx_ts_nand_unload(void)
{
 platform_device_del(&ts78xx_ts_nand_device);
}
