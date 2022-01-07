
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isar_hw {int clsb; int cmsb; int iis; int name; int hw; int (* read_reg ) (int ,int ) ;} ;


 int ISAR_CTRL_H ;
 int ISAR_CTRL_L ;
 int ISAR_IIS ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static inline void
get_irq_infos(struct isar_hw *isar)
{
 isar->iis = isar->read_reg(isar->hw, ISAR_IIS);
 isar->cmsb = isar->read_reg(isar->hw, ISAR_CTRL_H);
 isar->clsb = isar->read_reg(isar->hw, ISAR_CTRL_L);
 pr_debug("%s: rcv_mbox(%02x,%02x,%d)\n", isar->name,
  isar->iis, isar->cmsb, isar->clsb);
}
