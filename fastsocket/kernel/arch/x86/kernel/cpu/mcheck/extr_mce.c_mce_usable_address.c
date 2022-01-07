
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int status; int misc; } ;


 scalar_t__ MCI_MISC_ADDR_LSB (int ) ;
 scalar_t__ MCI_MISC_ADDR_MODE (int ) ;
 scalar_t__ MCI_MISC_ADDR_PHYS ;
 int MCI_STATUS_ADDRV ;
 int MCI_STATUS_MISCV ;
 scalar_t__ PAGE_SHIFT ;

__attribute__((used)) static int mce_usable_address(struct mce *m)
{
 if (!(m->status & MCI_STATUS_MISCV) || !(m->status & MCI_STATUS_ADDRV))
  return 0;
 if (MCI_MISC_ADDR_LSB(m->misc) > PAGE_SHIFT)
  return 0;
 if (MCI_MISC_ADDR_MODE(m->misc) != MCI_MISC_ADDR_PHYS)
  return 0;
 return 1;
}
