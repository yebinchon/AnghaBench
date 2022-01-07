
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {scalar_t__ offset; TYPE_1__* master; } ;
struct mtd_info {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int (* unpoint ) (TYPE_1__*,scalar_t__,size_t) ;} ;


 struct mtd_part* PART (struct mtd_info*) ;
 int stub1 (TYPE_1__*,scalar_t__,size_t) ;

__attribute__((used)) static void part_unpoint(struct mtd_info *mtd, loff_t from, size_t len)
{
 struct mtd_part *part = PART(mtd);

 part->master->unpoint(part->master, from + part->offset, len);
}
