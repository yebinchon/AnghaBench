
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct erase_info {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int map_absent_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 return -ENODEV;
}
