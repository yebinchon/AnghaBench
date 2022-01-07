
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct qib_pportdata {int link_width_enabled; int link_width_active; int link_speed_enabled; int link_speed_active; int vls_operational; TYPE_1__* cpspec; int dd; } ;
struct TYPE_2__ {int ibcctrl; int ibcddrctrl; } ;


 int EINVAL ;
 int IBA7220_DDRSTAT_LINKLAT_MASK ;
 int IBA7220_IBC_HRTBT_MASK ;
 int IBA7220_IBC_HRTBT_SHIFT ;
 int IBA7220_IBC_LREV_MASK ;
 int IBA7220_IBC_LREV_SHIFT ;
 int IBA7220_IBC_RXPOL_MASK ;
 int IBA7220_IBC_RXPOL_SHIFT ;
 int IBCCtrl ;
 int IB_LINKINITCMD_POLL ;
 int IB_LINKINITCMD_SLEEP ;
 int LinkDownDefaultState ;
 int OverrunThreshold ;
 int PhyerrThreshold ;
 int QIB_IB_DDR ;
 int SYM_FIELD (int,int ,int ) ;
 int SYM_MASK (int ,int ) ;
 int kr_ibcddrstatus ;
 int qib_read_kreg64 (int ,int ) ;

__attribute__((used)) static int qib_7220_get_ib_cfg(struct qib_pportdata *ppd, int which)
{
 int lsb, ret = 0;
 u64 maskr;

 switch (which) {
 case 137:
  ret = ppd->link_width_enabled;
  goto done;

 case 138:
  ret = ppd->link_width_active;
  goto done;

 case 130:
  ret = ppd->link_speed_enabled;
  goto done;

 case 131:
  ret = ppd->link_speed_active;
  goto done;

 case 132:
  lsb = IBA7220_IBC_RXPOL_SHIFT;
  maskr = IBA7220_IBC_RXPOL_MASK;
  break;

 case 139:
  lsb = IBA7220_IBC_LREV_SHIFT;
  maskr = IBA7220_IBC_LREV_MASK;
  break;

 case 140:
  ret = qib_read_kreg64(ppd->dd, kr_ibcddrstatus)
   & IBA7220_DDRSTAT_LINKLAT_MASK;
  goto done;

 case 136:
  ret = ppd->vls_operational;
  goto done;

 case 129:
  ret = 0;
  goto done;

 case 128:
  ret = 0;
  goto done;

 case 135:
  ret = SYM_FIELD(ppd->cpspec->ibcctrl, IBCCtrl,
    OverrunThreshold);
  goto done;

 case 134:
  ret = SYM_FIELD(ppd->cpspec->ibcctrl, IBCCtrl,
    PhyerrThreshold);
  goto done;

 case 141:

  ret = (ppd->cpspec->ibcctrl &
         SYM_MASK(IBCCtrl, LinkDownDefaultState)) ?
   IB_LINKINITCMD_SLEEP : IB_LINKINITCMD_POLL;
  goto done;

 case 142:
  lsb = IBA7220_IBC_HRTBT_SHIFT;
  maskr = IBA7220_IBC_HRTBT_MASK;
  break;

 case 133:




  ret = (ppd->link_speed_active == QIB_IB_DDR);
  goto done;

 default:
  ret = -EINVAL;
  goto done;
 }
 ret = (int)((ppd->cpspec->ibcddrctrl >> lsb) & maskr);
done:
 return ret;
}
