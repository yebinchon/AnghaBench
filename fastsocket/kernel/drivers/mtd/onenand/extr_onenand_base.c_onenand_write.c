
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_oob_ops {size_t len; size_t retlen; int * oobbuf; int * datbuf; int ooblen; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int FL_WRITING ;
 int onenand_get_device (struct mtd_info*,int ) ;
 int onenand_release_device (struct mtd_info*) ;
 int onenand_write_ops_nolock (struct mtd_info*,int ,struct mtd_oob_ops*) ;

__attribute__((used)) static int onenand_write(struct mtd_info *mtd, loff_t to, size_t len,
 size_t *retlen, const u_char *buf)
{
 struct mtd_oob_ops ops = {
  .len = len,
  .ooblen = 0,
  .datbuf = (u_char *) buf,
  .oobbuf = ((void*)0),
 };
 int ret;

 onenand_get_device(mtd, FL_WRITING);
 ret = onenand_write_ops_nolock(mtd, to, &ops);
 onenand_release_device(mtd);

 *retlen = ops.retlen;
 return ret;
}
