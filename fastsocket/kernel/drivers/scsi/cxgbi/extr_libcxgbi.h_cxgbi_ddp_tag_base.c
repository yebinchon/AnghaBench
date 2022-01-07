
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxgbi_tag_format {int rsvd_shift; int rsvd_bits; } ;



__attribute__((used)) static inline u32 cxgbi_ddp_tag_base(struct cxgbi_tag_format *tformat,
     u32 sw_tag)
{
 u32 mask = (1 << tformat->rsvd_shift) - 1;

 if (sw_tag && (sw_tag & ~mask)) {
  u32 v1 = sw_tag & mask;
  u32 v2 = sw_tag >> tformat->rsvd_shift;

  v2 <<= tformat->rsvd_bits + tformat->rsvd_shift;

  return v2 | v1;
 }

 return sw_tag;
}
