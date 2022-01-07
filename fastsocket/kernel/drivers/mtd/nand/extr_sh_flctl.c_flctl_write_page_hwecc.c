
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int size; int bytes; int steps; } ;
struct nand_chip {int (* write_buf ) (struct mtd_info*,int const*,int) ;TYPE_1__ ecc; } ;
struct mtd_info {int dummy; } ;


 int stub1 (struct mtd_info*,int const*,int) ;

__attribute__((used)) static void flctl_write_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
       const uint8_t *buf)
{
 int i, eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 int eccsteps = chip->ecc.steps;
 const uint8_t *p = buf;

 for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
  chip->write_buf(mtd, p, eccsize);
}
