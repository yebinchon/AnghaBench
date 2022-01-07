
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_nand {scalar_t__ fcr; } ;
struct mtd_info {int dummy; } ;


 scalar_t__ FCR_DATA ;
 scalar_t__ FCR_MODE ;
 int FCR_MODE_HWECC_CALC ;
 int FCR_MODE_HWECC_RESET ;
 struct tmio_nand* mtd_to_tmio (struct mtd_info*) ;
 int tmio_ioread8 (scalar_t__) ;
 int tmio_iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void tmio_nand_enable_hwecc(struct mtd_info *mtd, int mode)
{
 struct tmio_nand *tmio = mtd_to_tmio(mtd);

 tmio_iowrite8(FCR_MODE_HWECC_RESET, tmio->fcr + FCR_MODE);
 tmio_ioread8(tmio->fcr + FCR_DATA);
 tmio_iowrite8(FCR_MODE_HWECC_CALC, tmio->fcr + FCR_MODE);
}
