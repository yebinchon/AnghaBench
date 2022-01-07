
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int FL_PM_SUSPENDED ;
 int onenand_get_device (struct mtd_info*,int ) ;

__attribute__((used)) static int onenand_suspend(struct mtd_info *mtd)
{
 return onenand_get_device(mtd, FL_PM_SUSPENDED);
}
