
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ata_timing {scalar_t__ mode; } ;


 struct ata_timing* ata_timing ;

const struct ata_timing *ata_timing_find_mode(u8 xfer_mode)
{
 const struct ata_timing *t = ata_timing;

 while (xfer_mode > t->mode)
  t++;

 if (xfer_mode == t->mode)
  return t;
 return ((void*)0);
}
