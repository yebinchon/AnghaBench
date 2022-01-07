
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct otp_info {int dummy; } ;
struct mtd_part {TYPE_1__* master; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {int (* get_user_prot_info ) (TYPE_1__*,struct otp_info*,size_t) ;} ;


 struct mtd_part* PART (struct mtd_info*) ;
 int stub1 (TYPE_1__*,struct otp_info*,size_t) ;

__attribute__((used)) static int part_get_user_prot_info(struct mtd_info *mtd,
  struct otp_info *buf, size_t len)
{
 struct mtd_part *part = PART(mtd);
 return part->master->get_user_prot_info(part->master, buf, len);
}
