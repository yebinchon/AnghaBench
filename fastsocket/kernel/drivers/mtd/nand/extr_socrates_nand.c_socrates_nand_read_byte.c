
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_info {int dummy; } ;
typedef int byte ;


 int socrates_nand_read_buf (struct mtd_info*,int *,int) ;

__attribute__((used)) static uint8_t socrates_nand_read_byte(struct mtd_info *mtd)
{
 uint8_t byte;
 socrates_nand_read_buf(mtd, &byte, sizeof(byte));
 return byte;
}
