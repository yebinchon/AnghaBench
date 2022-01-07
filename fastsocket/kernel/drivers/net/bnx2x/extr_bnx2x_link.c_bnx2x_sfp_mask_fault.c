
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int,int) ;

__attribute__((used)) static void bnx2x_sfp_mask_fault(struct bnx2x *bp,
     struct bnx2x_phy *phy,
     u16 alarm_status_offset,
     u16 alarm_ctrl_offset)
{
 u16 alarm_status, val;
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, alarm_status_offset,
   &alarm_status);
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, alarm_status_offset,
   &alarm_status);

 bnx2x_cl45_read(bp, phy, MDIO_PMA_DEVAD, alarm_ctrl_offset, &val);
 if (alarm_status & (1<<0))
  val &= ~(1<<0);
 else
  val |= (1<<0);
 bnx2x_cl45_write(bp, phy, MDIO_PMA_DEVAD, alarm_ctrl_offset, val);
}
