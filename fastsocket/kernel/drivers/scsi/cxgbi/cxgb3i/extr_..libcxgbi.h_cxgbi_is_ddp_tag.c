
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxgbi_tag_format {int rsvd_bits; int rsvd_shift; } ;



__attribute__((used)) static inline int cxgbi_is_ddp_tag(struct cxgbi_tag_format *tformat, u32 tag)
{
 return !(tag & (1 << (tformat->rsvd_bits + tformat->rsvd_shift - 1)));
}
