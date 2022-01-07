
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfc2734_header {int w0; int w1; } ;


 int RFC2374_HDR_FIRSTFRAG ;
 int fwnet_set_hdr_dg_size (unsigned int) ;
 int fwnet_set_hdr_dgl (unsigned int) ;
 int fwnet_set_hdr_ether_type (unsigned int) ;
 int fwnet_set_hdr_lf (int ) ;

__attribute__((used)) static inline void fwnet_make_ff_hdr(struct rfc2734_header *hdr,
  unsigned ether_type, unsigned dg_size, unsigned dgl)
{
 hdr->w0 = fwnet_set_hdr_lf(RFC2374_HDR_FIRSTFRAG)
    | fwnet_set_hdr_dg_size(dg_size)
    | fwnet_set_hdr_ether_type(ether_type);
 hdr->w1 = fwnet_set_hdr_dgl(dgl);
}
