
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt77252_dev {int name; } ;


 int SAR_REG_CDC ;
 int SAR_REG_ICC ;
 int SAR_REG_VPEC ;
 int printk (char*,...) ;
 int readl (int ) ;

__attribute__((used)) static void
idt77252_collect_stat(struct idt77252_dev *card)
{
 u32 cdc, vpec, icc;

 cdc = readl(SAR_REG_CDC);
 vpec = readl(SAR_REG_VPEC);
 icc = readl(SAR_REG_ICC);
}
