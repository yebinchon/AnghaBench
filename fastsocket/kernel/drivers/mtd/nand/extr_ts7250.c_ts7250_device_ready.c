
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int TS72XX_NAND_BUSY_VIRT_BASE ;
 int __raw_readb (int ) ;

__attribute__((used)) static int ts7250_device_ready(struct mtd_info *mtd)
{
 return __raw_readb(TS72XX_NAND_BUSY_VIRT_BASE) & 0x20;
}
