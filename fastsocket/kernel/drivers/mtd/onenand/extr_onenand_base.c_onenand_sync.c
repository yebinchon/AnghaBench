
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int DEBUG (int ,char*) ;
 int FL_SYNCING ;
 int MTD_DEBUG_LEVEL3 ;
 int onenand_get_device (struct mtd_info*,int ) ;
 int onenand_release_device (struct mtd_info*) ;

__attribute__((used)) static void onenand_sync(struct mtd_info *mtd)
{
 DEBUG(MTD_DEBUG_LEVEL3, "onenand_sync: called\n");


 onenand_get_device(mtd, FL_SYNCING);


 onenand_release_device(mtd);
}
