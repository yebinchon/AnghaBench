
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int alauda_read_oob (struct mtd_info*,int ,int *) ;
 int popcount8 (int ) ;

__attribute__((used)) static int alauda_isbad(struct mtd_info *mtd, loff_t ofs)
{
 u8 oob[16];
 int err;

 err = alauda_read_oob(mtd, ofs, oob);
 if (err)
  return err;


 return popcount8(oob[5]) >= 7 ? 0 : 1;
}
