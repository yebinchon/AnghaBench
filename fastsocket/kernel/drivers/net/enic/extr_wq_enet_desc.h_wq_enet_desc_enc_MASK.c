#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct wq_enet_desc {void* vlan_tag; void* header_length_flags; void* mss_loopback; void* length; int /*<<< orphan*/  address; } ;

/* Variables and functions */
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
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct wq_enet_desc *desc,
	u64 address, u16 length, u16 mss, u16 header_length,
	u8 offload_mode, u8 eop, u8 cq_entry, u8 fcoe_encap,
	u8 vlan_tag_insert, u16 vlan_tag, u8 loopback)
{
	desc->address = FUNC1(address);
	desc->length = FUNC0(length & WQ_ENET_LEN_MASK);
	desc->mss_loopback = FUNC0((mss & WQ_ENET_MSS_MASK) <<
		WQ_ENET_MSS_SHIFT | (loopback & 1) << WQ_ENET_LOOPBACK_SHIFT);
	desc->header_length_flags = FUNC0(
		(header_length & WQ_ENET_HDRLEN_MASK) |
		(offload_mode & WQ_ENET_FLAGS_OM_MASK) << WQ_ENET_HDRLEN_BITS |
		(eop & 1) << WQ_ENET_FLAGS_EOP_SHIFT |
		(cq_entry & 1) << WQ_ENET_FLAGS_CQ_ENTRY_SHIFT |
		(fcoe_encap & 1) << WQ_ENET_FLAGS_FCOE_ENCAP_SHIFT |
		(vlan_tag_insert & 1) << WQ_ENET_FLAGS_VLAN_TAG_INSERT_SHIFT);
	desc->vlan_tag = FUNC0(vlan_tag);
}