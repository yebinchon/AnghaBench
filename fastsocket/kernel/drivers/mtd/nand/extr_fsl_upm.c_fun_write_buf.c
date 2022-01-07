
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {int IO_ADDR_W; } ;
struct fsl_upm_nand {int wait_flags; TYPE_1__ chip; } ;


 int FSL_UPM_WAIT_WRITE_BUFFER ;
 int FSL_UPM_WAIT_WRITE_BYTE ;
 int fun_wait_rnb (struct fsl_upm_nand*) ;
 int out_8 (int ,int const) ;
 struct fsl_upm_nand* to_fsl_upm_nand (struct mtd_info*) ;

__attribute__((used)) static void fun_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
{
 struct fsl_upm_nand *fun = to_fsl_upm_nand(mtd);
 int i;

 for (i = 0; i < len; i++) {
  out_8(fun->chip.IO_ADDR_W, buf[i]);
  if (fun->wait_flags & FSL_UPM_WAIT_WRITE_BYTE)
   fun_wait_rnb(fun);
 }
 if (fun->wait_flags & FSL_UPM_WAIT_WRITE_BUFFER)
  fun_wait_rnb(fun);
}
