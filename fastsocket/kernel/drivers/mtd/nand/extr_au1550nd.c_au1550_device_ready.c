
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int MEM_STSTAT ;
 int au_readl (int ) ;
 int au_sync () ;

int au1550_device_ready(struct mtd_info *mtd)
{
 int ret = (au_readl(MEM_STSTAT) & 0x1) ? 1 : 0;
 au_sync();
 return ret;
}
