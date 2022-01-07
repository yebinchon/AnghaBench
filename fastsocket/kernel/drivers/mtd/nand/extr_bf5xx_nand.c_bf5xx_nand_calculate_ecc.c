
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mtd_info {int dummy; } ;
struct bf5xx_nand_platform {scalar_t__ page_size; } ;
struct bf5xx_nand_info {int device; struct bf5xx_nand_platform* platform; } ;


 int bfin_read_NFC_ECC0 () ;
 int bfin_read_NFC_ECC1 () ;
 int bfin_read_NFC_ECC2 () ;
 int bfin_read_NFC_ECC3 () ;
 int dev_dbg (int ,char*,int) ;
 int memcpy (int *,int *,int) ;
 struct bf5xx_nand_info* mtd_to_nand_info (struct mtd_info*) ;

__attribute__((used)) static int bf5xx_nand_calculate_ecc(struct mtd_info *mtd,
  const u_char *dat, u_char *ecc_code)
{
 struct bf5xx_nand_info *info = mtd_to_nand_info(mtd);
 struct bf5xx_nand_platform *plat = info->platform;
 u16 page_size = (plat->page_size ? 512 : 256);
 u16 ecc0, ecc1;
 u32 code[2];
 u8 *p;


 ecc0 = bfin_read_NFC_ECC0();
 ecc1 = bfin_read_NFC_ECC1();

 code[0] = (ecc0 & 0x7ff) | ((ecc1 & 0x7ff) << 11);

 dev_dbg(info->device, "returning ecc 0x%08x\n", code[0]);


 p = (u8 *) code;
 memcpy(ecc_code, p, 3);


 if (page_size == 512) {
  ecc0 = bfin_read_NFC_ECC2();
  ecc1 = bfin_read_NFC_ECC3();
  code[1] = (ecc0 & 0x7ff) | ((ecc1 & 0x7ff) << 11);




  p = (u8 *) (code + 1);
  memcpy((ecc_code + 3), p, 3);
  dev_dbg(info->device, "returning ecc 0x%08x\n", code[1]);
 }

 return 0;
}
