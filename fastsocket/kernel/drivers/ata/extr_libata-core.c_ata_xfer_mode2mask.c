
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ata_xfer_ent {int shift; scalar_t__ base; scalar_t__ bits; } ;


 struct ata_xfer_ent* ata_xfer_tbl ;

unsigned long ata_xfer_mode2mask(u8 xfer_mode)
{
 const struct ata_xfer_ent *ent;

 for (ent = ata_xfer_tbl; ent->shift >= 0; ent++)
  if (xfer_mode >= ent->base && xfer_mode < ent->base + ent->bits)
   return ((2 << (ent->shift + xfer_mode - ent->base)) - 1)
    & ~((1 << ent->shift) - 1);
 return 0;
}
