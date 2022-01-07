
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int,int) ;

__attribute__((used)) static void bnx2x_cl45_read_and_write(struct bnx2x *bp,
          struct bnx2x_phy *phy,
          u8 devad, u16 reg, u16 and_val)
{
 u16 val;
 bnx2x_cl45_read(bp, phy, devad, reg, &val);
 bnx2x_cl45_write(bp, phy, devad, reg, val & and_val);
}
