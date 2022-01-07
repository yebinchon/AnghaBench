
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {int IO_ADDR_R; } ;
struct fsl_upm_nand {TYPE_1__ chip; } ;


 int in_8 (int ) ;
 struct fsl_upm_nand* to_fsl_upm_nand (struct mtd_info*) ;

__attribute__((used)) static void fun_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
{
 struct fsl_upm_nand *fun = to_fsl_upm_nand(mtd);
 int i;

 for (i = 0; i < len; i++)
  buf[i] = in_8(fun->chip.IO_ADDR_R);
}
