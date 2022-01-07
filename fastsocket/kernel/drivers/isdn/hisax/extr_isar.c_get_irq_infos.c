
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isar_reg {int clsb; int cmsb; int iis; } ;
struct IsdnCardState {int debug; int (* BC_Read_Reg ) (struct IsdnCardState*,int,int ) ;} ;


 int ISAR_CTRL_H ;
 int ISAR_CTRL_L ;
 int ISAR_IIS ;
 int L1_DEB_HSCX ;
 int debugl1 (struct IsdnCardState*,char*,int ,int ,int ) ;
 int stub1 (struct IsdnCardState*,int,int ) ;
 int stub2 (struct IsdnCardState*,int,int ) ;
 int stub3 (struct IsdnCardState*,int,int ) ;

__attribute__((used)) static inline void
get_irq_infos(struct IsdnCardState *cs, struct isar_reg *ireg)
{
 ireg->iis = cs->BC_Read_Reg(cs, 1, ISAR_IIS);
 ireg->cmsb = cs->BC_Read_Reg(cs, 1, ISAR_CTRL_H);
 ireg->clsb = cs->BC_Read_Reg(cs, 1, ISAR_CTRL_L);





}
