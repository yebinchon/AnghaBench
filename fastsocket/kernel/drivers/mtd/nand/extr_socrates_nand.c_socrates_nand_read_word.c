
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int uint8_t ;
typedef int uint16_t ;
struct mtd_info {int dummy; } ;


 int socrates_nand_read_buf (struct mtd_info*,int *,int) ;

__attribute__((used)) static uint16_t socrates_nand_read_word(struct mtd_info *mtd)
{
 uint16_t word;
 socrates_nand_read_buf(mtd, (uint8_t *)&word, sizeof(word));
 return word;
}
