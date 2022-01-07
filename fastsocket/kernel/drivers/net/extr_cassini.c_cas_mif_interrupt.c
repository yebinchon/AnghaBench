
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct cas {scalar_t__ regs; } ;


 scalar_t__ CAS_VAL (int ,int ) ;
 int MIF_STATUS_POLL_DATA ;
 int MIF_STATUS_POLL_STATUS ;
 scalar_t__ REG_MIF_STATUS ;
 int cas_mii_link_check (struct cas*,scalar_t__) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int cas_mif_interrupt(struct net_device *dev, struct cas *cp,
        u32 status)
{
 u32 stat = readl(cp->regs + REG_MIF_STATUS);
 u16 bmsr;


 if (CAS_VAL(MIF_STATUS_POLL_STATUS, stat) == 0)
  return 0;

 bmsr = CAS_VAL(MIF_STATUS_POLL_DATA, stat);
 return cas_mii_link_check(cp, bmsr);
}
