
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_nand_info {int dummy; } ;


 int NAND_4BIT_ECC1_OFFSET ;
 int NAND_4BIT_ECC2_OFFSET ;
 int NAND_4BIT_ECC3_OFFSET ;
 int NAND_4BIT_ECC4_OFFSET ;
 int const davinci_nand_readl (struct davinci_nand_info*,int ) ;

__attribute__((used)) static void
nand_davinci_readecc_4bit(struct davinci_nand_info *info, u32 code[4])
{
 const u32 mask = 0x03ff03ff;

 code[0] = davinci_nand_readl(info, NAND_4BIT_ECC1_OFFSET) & mask;
 code[1] = davinci_nand_readl(info, NAND_4BIT_ECC2_OFFSET) & mask;
 code[2] = davinci_nand_readl(info, NAND_4BIT_ECC3_OFFSET) & mask;
 code[3] = davinci_nand_readl(info, NAND_4BIT_ECC4_OFFSET) & mask;
}
