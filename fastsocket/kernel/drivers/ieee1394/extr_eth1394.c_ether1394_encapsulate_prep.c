
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t lf; unsigned int dg_size; unsigned int dgl; void* ether_type; } ;
struct TYPE_4__ {size_t lf; void* ether_type; } ;
union eth1394_hdr {TYPE_1__ ff; TYPE_2__ uf; } ;
typedef unsigned int u16 ;
typedef void* __be16 ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 size_t ETH1394_HDR_LF_FF ;
 size_t ETH1394_HDR_LF_UF ;
 unsigned int* hdr_type_len ;

__attribute__((used)) static unsigned int ether1394_encapsulate_prep(unsigned int max_payload,
            __be16 proto,
            union eth1394_hdr *hdr,
            u16 dg_size, u16 dgl)
{
 unsigned int adj_max_payload =
    max_payload - hdr_type_len[ETH1394_HDR_LF_UF];


 if (dg_size <= adj_max_payload) {
  hdr->uf.lf = ETH1394_HDR_LF_UF;
  hdr->uf.ether_type = proto;
 } else {
  hdr->ff.lf = ETH1394_HDR_LF_FF;
  hdr->ff.ether_type = proto;
  hdr->ff.dg_size = dg_size - 1;
  hdr->ff.dgl = dgl;
  adj_max_payload = max_payload - hdr_type_len[ETH1394_HDR_LF_FF];
 }
 return DIV_ROUND_UP(dg_size, adj_max_payload);
}
