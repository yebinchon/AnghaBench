
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ base; } ;
struct TYPE_5__ {TYPE_1__ ax; } ;
struct IsdnCardState {scalar_t__ typ; TYPE_2__ hw; } ;
struct TYPE_6__ {int i20SysControl; int i20GuestControl; } ;
typedef TYPE_3__ I20_REGISTER_FILE ;


 scalar_t__ ISDN_CTYPE_BKM_A4T ;
 int g_A4T_ISAC_RES ;
 int g_A4T_ISAR_BOOTR ;
 int g_A4T_ISAR_RES ;
 int g_A4T_JADE_BOOTR ;
 int g_A4T_JADE_RES ;
 int guestWAIT_CFG ;
 int mdelay (int) ;
 int sysCFG ;
 int sysRESET ;

__attribute__((used)) static void
reset_bkm(struct IsdnCardState *cs)
{
 if (cs->typ == ISDN_CTYPE_BKM_A4T) {
  I20_REGISTER_FILE *pI20_Regs = (I20_REGISTER_FILE *) (cs->hw.ax.base);

  pI20_Regs->i20SysControl = 0xFF;
  mdelay(10);

  pI20_Regs->i20SysControl = sysRESET | 0xFF;
  mdelay(10);

  pI20_Regs->i20SysControl = sysRESET | sysCFG;

  pI20_Regs->i20GuestControl = guestWAIT_CFG |
      g_A4T_JADE_RES |
      g_A4T_ISAR_RES |
      g_A4T_ISAC_RES |
      g_A4T_JADE_BOOTR |
      g_A4T_ISAR_BOOTR;
  mdelay(10);


  pI20_Regs->i20GuestControl &= ~(g_A4T_ISAC_RES |
      g_A4T_JADE_RES |
      g_A4T_ISAR_RES);
  mdelay(10);
 }
}
