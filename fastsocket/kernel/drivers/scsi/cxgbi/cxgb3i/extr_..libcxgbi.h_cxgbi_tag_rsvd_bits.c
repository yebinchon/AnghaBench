
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxgbi_tag_format {int rsvd_shift; int rsvd_mask; } ;


 scalar_t__ cxgbi_is_ddp_tag (struct cxgbi_tag_format*,int) ;

__attribute__((used)) static inline u32 cxgbi_tag_rsvd_bits(struct cxgbi_tag_format *tformat,
     u32 tag)
{
 if (cxgbi_is_ddp_tag(tformat, tag))
  return (tag >> tformat->rsvd_shift) & tformat->rsvd_mask;

 return 0;
}
