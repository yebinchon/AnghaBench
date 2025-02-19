
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxgbi_tag_format {int rsvd_bits; int rsvd_shift; } ;


 scalar_t__ cxgbi_is_ddp_tag (struct cxgbi_tag_format*,int) ;

__attribute__((used)) static inline u32 cxgbi_tag_nonrsvd_bits(struct cxgbi_tag_format *tformat,
     u32 tag)
{
 unsigned char shift = tformat->rsvd_bits + tformat->rsvd_shift - 1;
 u32 v1, v2;

 if (cxgbi_is_ddp_tag(tformat, tag)) {
  v1 = tag & ((1 << tformat->rsvd_shift) - 1);
  v2 = (tag >> (shift + 1)) << tformat->rsvd_shift;
 } else {
  u32 mask = (1 << shift) - 1;
  tag &= ~(1 << shift);
  v1 = tag & mask;
  v2 = (tag >> 1) & ~mask;
 }
 return v1 | v2;
}
