
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct phy_iq_est {int i_pwr; int q_pwr; int iq_prod; } ;
struct TYPE_2__ {size_t phy_corenum; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 int NPHY_IqestCmd_iqMode ;
 int NPHY_IqestCmd_iqstart ;
 int NPHY_IqestIqAccHi (size_t) ;
 int NPHY_IqestIqAccLo (size_t) ;
 int NPHY_IqestipwrAccHi (size_t) ;
 int NPHY_IqestipwrAccLo (size_t) ;
 int NPHY_IqestqpwrAccHi (size_t) ;
 int NPHY_IqestqpwrAccLo (size_t) ;
 int SPINWAIT (int,int) ;
 scalar_t__ WARN (int,char*) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int write_phy_reg (struct brcms_phy*,int,int ) ;

void
wlc_phy_rx_iq_est_nphy(struct brcms_phy *pi, struct phy_iq_est *est,
         u16 num_samps, u8 wait_time, u8 wait_for_crs)
{
 u8 core;

 write_phy_reg(pi, 0x12b, num_samps);
 mod_phy_reg(pi, 0x12a, (0xff << 0), (wait_time << 0));
 mod_phy_reg(pi, 0x129, NPHY_IqestCmd_iqMode,
      (wait_for_crs) ? NPHY_IqestCmd_iqMode : 0);

 mod_phy_reg(pi, 0x129, NPHY_IqestCmd_iqstart, NPHY_IqestCmd_iqstart);

 SPINWAIT(((read_phy_reg(pi, 0x129) & NPHY_IqestCmd_iqstart) != 0),
   10000);
 if (WARN(read_phy_reg(pi, 0x129) & NPHY_IqestCmd_iqstart,
   "HW error: rxiq est"))
  return;

 if ((read_phy_reg(pi, 0x129) & NPHY_IqestCmd_iqstart) == 0) {
  for (core = 0; core < pi->pubpi.phy_corenum; core++) {
   est[core].i_pwr =
    (read_phy_reg(pi,
           NPHY_IqestipwrAccHi(core)) << 16)
    | read_phy_reg(pi, NPHY_IqestipwrAccLo(core));
   est[core].q_pwr =
    (read_phy_reg(pi,
           NPHY_IqestqpwrAccHi(core)) << 16)
    | read_phy_reg(pi, NPHY_IqestqpwrAccLo(core));
   est[core].iq_prod =
    (read_phy_reg(pi,
           NPHY_IqestIqAccHi(core)) << 16) |
    read_phy_reg(pi, NPHY_IqestIqAccLo(core));
  }
 }
}
