
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u16 ;
struct wq_enet_desc {int vlan_tag; int header_length_flags; int mss_loopback; int length; int address; } ;


 int WQ_ENET_FLAGS_CQ_ENTRY_SHIFT ;
 int WQ_ENET_FLAGS_EOP_SHIFT ;
 int WQ_ENET_FLAGS_FCOE_ENCAP_SHIFT ;
 int WQ_ENET_FLAGS_OM_MASK ;
 int WQ_ENET_FLAGS_VLAN_TAG_INSERT_SHIFT ;
 int WQ_ENET_HDRLEN_BITS ;
 int WQ_ENET_HDRLEN_MASK ;
 int WQ_ENET_LEN_MASK ;
 int WQ_ENET_LOOPBACK_SHIFT ;
 int WQ_ENET_MSS_MASK ;
 int WQ_ENET_MSS_SHIFT ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static inline void wq_enet_desc_dec(struct wq_enet_desc *desc,
 u64 *address, u16 *length, u16 *mss, u16 *header_length,
 u8 *offload_mode, u8 *eop, u8 *cq_entry, u8 *fcoe_encap,
 u8 *vlan_tag_insert, u16 *vlan_tag, u8 *loopback)
{
 *address = le64_to_cpu(desc->address);
 *length = le16_to_cpu(desc->length) & WQ_ENET_LEN_MASK;
 *mss = (le16_to_cpu(desc->mss_loopback) >> WQ_ENET_MSS_SHIFT) &
  WQ_ENET_MSS_MASK;
 *loopback = (u8)((le16_to_cpu(desc->mss_loopback) >>
  WQ_ENET_LOOPBACK_SHIFT) & 1);
 *header_length = le16_to_cpu(desc->header_length_flags) &
  WQ_ENET_HDRLEN_MASK;
 *offload_mode = (u8)((le16_to_cpu(desc->header_length_flags) >>
  WQ_ENET_HDRLEN_BITS) & WQ_ENET_FLAGS_OM_MASK);
 *eop = (u8)((le16_to_cpu(desc->header_length_flags) >>
  WQ_ENET_FLAGS_EOP_SHIFT) & 1);
 *cq_entry = (u8)((le16_to_cpu(desc->header_length_flags) >>
  WQ_ENET_FLAGS_CQ_ENTRY_SHIFT) & 1);
 *fcoe_encap = (u8)((le16_to_cpu(desc->header_length_flags) >>
  WQ_ENET_FLAGS_FCOE_ENCAP_SHIFT) & 1);
 *vlan_tag_insert = (u8)((le16_to_cpu(desc->header_length_flags) >>
  WQ_ENET_FLAGS_VLAN_TAG_INSERT_SHIFT) & 1);
 *vlan_tag = le16_to_cpu(desc->vlan_tag);
}
