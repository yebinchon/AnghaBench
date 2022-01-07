
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cas {int cas_flags; } ;


 int CAS_FLAG_1000MB_CAP ;
 int CAS_LPA_1000FULL ;
 int CAS_LPA_1000HALF ;
 int CAS_LPA_ASYM_PAUSE ;
 int CAS_LPA_PAUSE ;
 int CAS_MII_1000_STATUS ;
 int LPA_100 ;
 int LPA_DUPLEX ;
 int MII_LPA ;
 int cas_phy_read (struct cas*,int ) ;

__attribute__((used)) static void cas_read_mii_link_mode(struct cas *cp, int *fd, int *spd,
       int *pause)
{
 u32 val;

 *fd = 0;
 *spd = 10;
 *pause = 0;


 val = cas_phy_read(cp, MII_LPA);
 if (val & CAS_LPA_PAUSE)
  *pause = 0x01;

 if (val & CAS_LPA_ASYM_PAUSE)
  *pause |= 0x10;

 if (val & LPA_DUPLEX)
  *fd = 1;
 if (val & LPA_100)
  *spd = 100;

 if (cp->cas_flags & CAS_FLAG_1000MB_CAP) {
  val = cas_phy_read(cp, CAS_MII_1000_STATUS);
  if (val & (CAS_LPA_1000FULL | CAS_LPA_1000HALF))
   *spd = 1000;
  if (val & CAS_LPA_1000FULL)
   *fd = 1;
 }
}
