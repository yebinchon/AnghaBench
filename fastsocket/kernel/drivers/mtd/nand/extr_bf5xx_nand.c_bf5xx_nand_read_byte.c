
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_info {int dummy; } ;


 int bf5xx_nand_read_buf (struct mtd_info*,int *,int) ;

__attribute__((used)) static uint8_t bf5xx_nand_read_byte(struct mtd_info *mtd)
{
 uint8_t val;

 bf5xx_nand_read_buf(mtd, &val, 1);

 return val;
}
