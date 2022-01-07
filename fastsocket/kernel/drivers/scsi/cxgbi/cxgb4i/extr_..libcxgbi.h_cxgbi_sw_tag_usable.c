
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxgbi_tag_format {int rsvd_bits; } ;



__attribute__((used)) static inline int cxgbi_sw_tag_usable(struct cxgbi_tag_format *tformat,
     u32 sw_tag)
{
 sw_tag >>= (32 - tformat->rsvd_bits);
 return !sw_tag;
}
