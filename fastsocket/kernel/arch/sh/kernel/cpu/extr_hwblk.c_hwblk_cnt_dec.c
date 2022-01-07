
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwblk_info {int dummy; } ;


 int hwblk_mod_cnt (struct hwblk_info*,int,int,int,int ) ;

void hwblk_cnt_dec(struct hwblk_info *info, int hwblk, int counter)
{
 hwblk_mod_cnt(info, hwblk, counter, -1, 0);
}
