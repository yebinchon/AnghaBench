
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_upm_nand {scalar_t__* rnb_gpio; size_t mchip_number; int dev; int mtd; } ;


 int cpu_relax () ;
 int dev_err (int ,char*) ;
 int fun_chip_ready (int *) ;
 int ndelay (int) ;

__attribute__((used)) static void fun_wait_rnb(struct fsl_upm_nand *fun)
{
 if (fun->rnb_gpio[fun->mchip_number] >= 0) {
  int cnt = 1000000;

  while (--cnt && !fun_chip_ready(&fun->mtd))
   cpu_relax();
  if (!cnt)
   dev_err(fun->dev, "tired waiting for RNB\n");
 } else {
  ndelay(100);
 }
}
