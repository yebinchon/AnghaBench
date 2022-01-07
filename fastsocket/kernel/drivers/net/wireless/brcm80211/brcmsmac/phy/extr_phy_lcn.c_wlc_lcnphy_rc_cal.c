
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 scalar_t__ LCNREV_IS (int ,int) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

__attribute__((used)) static void wlc_lcnphy_rc_cal(struct brcms_phy *pi)
{
 u8 dflt_rc_cal_val;
 u16 flt_val;

 dflt_rc_cal_val = 7;
 if (LCNREV_IS(pi->pubpi.phy_rev, 1))
  dflt_rc_cal_val = 11;
 flt_val =
  (dflt_rc_cal_val << 10) | (dflt_rc_cal_val << 5) |
  (dflt_rc_cal_val);
 write_phy_reg(pi, 0x933, flt_val);
 write_phy_reg(pi, 0x934, flt_val);
 write_phy_reg(pi, 0x935, flt_val);
 write_phy_reg(pi, 0x936, flt_val);
 write_phy_reg(pi, 0x937, (flt_val & 0x1FF));

 return;
}
