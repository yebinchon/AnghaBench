
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {TYPE_1__* master; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int (* lock_user_prot_reg ) (TYPE_1__*,int ,size_t) ;} ;


 struct mtd_part* PART (struct mtd_info*) ;
 int stub1 (TYPE_1__*,int ,size_t) ;

__attribute__((used)) static int part_lock_user_prot_reg(struct mtd_info *mtd, loff_t from,
  size_t len)
{
 struct mtd_part *part = PART(mtd);
 return part->master->lock_user_prot_reg(part->master, from, len);
}
