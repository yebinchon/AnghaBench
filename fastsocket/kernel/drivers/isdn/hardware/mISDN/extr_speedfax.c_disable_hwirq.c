
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfax_hw {scalar_t__ cfg; } ;


 int ISAC_MASK ;
 int ISAR_IRQBIT ;
 scalar_t__ TIGER_AUX_IRQMASK ;
 int WriteISAC_IND (struct sfax_hw*,int ,int) ;
 int WriteISAR_IND (struct sfax_hw*,int ,int ) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void
disable_hwirq(struct sfax_hw *sf)
{
 WriteISAC_IND(sf, ISAC_MASK, 0xFF);
 WriteISAR_IND(sf, ISAR_IRQBIT, 0);
 outb(0, sf->cfg + TIGER_AUX_IRQMASK);
}
