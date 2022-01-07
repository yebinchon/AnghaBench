
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ses_component {unsigned char* desc; int addr; } ;
struct enclosure_component {struct ses_component* scratch; } ;
typedef enum scsi_protocol { ____Placeholder_scsi_protocol } scsi_protocol ;




__attribute__((used)) static void ses_process_descriptor(struct enclosure_component *ecomp,
       unsigned char *desc)
{
 int eip = desc[0] & 0x10;
 int invalid = desc[0] & 0x80;
 enum scsi_protocol proto = desc[0] & 0x0f;
 u64 addr = 0;
 struct ses_component *scomp = ecomp->scratch;
 unsigned char *d;

 scomp->desc = desc;

 if (invalid)
  return;

 switch (proto) {
 case 128:
  if (eip)
   d = desc + 8;
  else
   d = desc + 4;

  addr = (u64)d[12] << 56 |
   (u64)d[13] << 48 |
   (u64)d[14] << 40 |
   (u64)d[15] << 32 |
   (u64)d[16] << 24 |
   (u64)d[17] << 16 |
   (u64)d[18] << 8 |
   (u64)d[19];
  break;
 default:

  break;
 }
 scomp->addr = addr;
}
