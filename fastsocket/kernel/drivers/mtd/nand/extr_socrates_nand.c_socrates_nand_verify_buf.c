
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mtd_info {int dummy; } ;


 int EFAULT ;
 scalar_t__ const socrates_nand_read_byte (struct mtd_info*) ;

__attribute__((used)) static int socrates_nand_verify_buf(struct mtd_info *mtd, const u8 *buf,
  int len)
{
 int i;

 for (i = 0; i < len; i++) {
  if (buf[i] != socrates_nand_read_byte(mtd))
   return -EFAULT;
 }
 return 0;
}
