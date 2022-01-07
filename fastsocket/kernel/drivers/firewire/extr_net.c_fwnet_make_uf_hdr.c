
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfc2734_header {int w0; } ;


 int RFC2374_HDR_UNFRAG ;
 int fwnet_set_hdr_ether_type (unsigned int) ;
 int fwnet_set_hdr_lf (int ) ;

__attribute__((used)) static inline void fwnet_make_uf_hdr(struct rfc2734_header *hdr,
  unsigned ether_type)
{
 hdr->w0 = fwnet_set_hdr_lf(RFC2374_HDR_UNFRAG)
    | fwnet_set_hdr_ether_type(ether_type);
}
