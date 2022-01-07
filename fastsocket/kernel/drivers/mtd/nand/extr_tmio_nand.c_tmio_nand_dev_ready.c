
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_nand {scalar_t__ fcr; } ;
struct mtd_info {int dummy; } ;


 scalar_t__ FCR_STATUS ;
 int FCR_STATUS_BUSY ;
 struct tmio_nand* mtd_to_tmio (struct mtd_info*) ;
 int tmio_ioread8 (scalar_t__) ;

__attribute__((used)) static int tmio_nand_dev_ready(struct mtd_info *mtd)
{
 struct tmio_nand *tmio = mtd_to_tmio(mtd);

 return !(tmio_ioread8(tmio->fcr + FCR_STATUS) & FCR_STATUS_BUSY);
}
