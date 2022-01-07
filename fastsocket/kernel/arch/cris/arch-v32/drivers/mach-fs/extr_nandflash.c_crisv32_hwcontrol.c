
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct TYPE_4__ {unsigned int data; } ;
typedef TYPE_1__ reg_gio_rw_pa_dout ;


 int ALE_BIT ;
 unsigned int CE_BIT ;
 int CLE_BIT ;
 unsigned int CTRL_BITMASK ;
 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_CTRL_CHANGE ;
 unsigned int NAND_NCE ;
 unsigned int PIN_BITMASK ;
 TYPE_1__ REG_RD (int ,int ,int ) ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int gio ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int regi_gio ;
 int rw_pa_dout ;
 int writeb (int,int ) ;

__attribute__((used)) static void crisv32_hwcontrol(struct mtd_info *mtd, int cmd,
         unsigned int ctrl)
{
 unsigned long flags;
 reg_gio_rw_pa_dout dout;
 struct nand_chip *this = mtd->priv;

 local_irq_save(flags);


 if (ctrl & NAND_CTRL_CHANGE) {
  dout = REG_RD(gio, regi_gio, rw_pa_dout);
  dout.data &= ~PIN_BITMASK;
  if (!(ctrl & NAND_NCE))
   dout.data |= (1 << CE_BIT);
  if (ctrl & NAND_CLE)
   dout.data |= (1 << CLE_BIT);
  if (ctrl & NAND_ALE)
   dout.data |= (1 << ALE_BIT);

  REG_WR(gio, regi_gio, rw_pa_dout, dout);
 }


 if (cmd != NAND_CMD_NONE)
  writeb(cmd, this->IO_ADDR_W);

 local_irq_restore(flags);
}
