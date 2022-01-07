
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int FWH_XXLOCK_ONEBLOCK_UNLOCK ;
 int cfi_varsize_frob (struct mtd_info*,int ,int ,int ,void*) ;
 int fwh_xxlock_oneblock ;

__attribute__((used)) static int fwh_unlock_varsize(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
 int ret;

 ret = cfi_varsize_frob(mtd, fwh_xxlock_oneblock, ofs, len,
  (void *)&FWH_XXLOCK_ONEBLOCK_UNLOCK);

 return ret;
}
