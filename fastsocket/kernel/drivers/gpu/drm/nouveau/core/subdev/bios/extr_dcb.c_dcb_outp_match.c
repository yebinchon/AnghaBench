
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_bios {int dummy; } ;
struct dcb_output {int dummy; } ;


 int dcb_outp_hashm (struct dcb_output*) ;
 int dcb_outp_hasht (struct dcb_output*) ;
 int dcb_outp_parse (struct nouveau_bios*,int ,int *,int *,struct dcb_output*) ;

u16
dcb_outp_match(struct nouveau_bios *bios, u16 type, u16 mask,
        u8 *ver, u8 *len, struct dcb_output *outp)
{
 u16 dcb, idx = 0;
 while ((dcb = dcb_outp_parse(bios, idx++, ver, len, outp))) {
  if ((dcb_outp_hasht(outp) & 0x00ff) == (type & 0x00ff)) {
   if ((dcb_outp_hashm(outp) & mask) == mask)
    break;
  }
 }
 return dcb;
}
