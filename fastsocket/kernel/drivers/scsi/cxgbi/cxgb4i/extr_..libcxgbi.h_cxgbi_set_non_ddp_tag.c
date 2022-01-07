
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxgbi_tag_format {int rsvd_bits; int rsvd_shift; } ;



__attribute__((used)) static inline u32 cxgbi_set_non_ddp_tag(struct cxgbi_tag_format *tformat,
     u32 sw_tag)
{
 unsigned char shift = tformat->rsvd_bits + tformat->rsvd_shift - 1;
 u32 mask = (1 << shift) - 1;

 if (sw_tag && (sw_tag & ~mask)) {
  u32 v1 = sw_tag & ((1 << shift) - 1);
  u32 v2 = (sw_tag >> (shift - 1)) << shift;

  return v2 | v1 | 1 << shift;
 }

 return sw_tag | 1 << shift;
}
