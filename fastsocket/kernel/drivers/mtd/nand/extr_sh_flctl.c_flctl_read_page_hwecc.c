
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct sh_flctl {scalar_t__* hwecc_cant_correct; } ;
struct TYPE_3__ {int size; int bytes; int steps; } ;
struct nand_chip {int (* read_buf ) (struct mtd_info*,int *,int) ;TYPE_1__ ecc; } ;
struct TYPE_4__ {int corrected; int failed; } ;
struct mtd_info {TYPE_2__ ecc_stats; } ;


 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 int stub1 (struct mtd_info*,int *,int) ;

__attribute__((used)) static int flctl_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
    uint8_t *buf, int page)
{
 int i, eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 int eccsteps = chip->ecc.steps;
 uint8_t *p = buf;
 struct sh_flctl *flctl = mtd_to_flctl(mtd);

 for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
  chip->read_buf(mtd, p, eccsize);

 for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
  if (flctl->hwecc_cant_correct[i])
   mtd->ecc_stats.failed++;
  else
   mtd->ecc_stats.corrected += 0;
 }

 return 0;
}
