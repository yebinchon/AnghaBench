
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int BUG () ;

__attribute__((used)) static void cafe_nand_bug(struct mtd_info *mtd)
{
 BUG();
}
