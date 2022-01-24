#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;
struct TYPE_8__ {int* addr; void* ip_type; } ;
struct tcp_connect_and_offload_in {unsigned int tag0; unsigned short cid; unsigned short defq_id; unsigned short hdr_ring_id; unsigned short data_ring_id; int do_offload; TYPE_6__ dataout_template_pa; int /*<<< orphan*/  cq_id; void* tcp_port; TYPE_2__ ip_address; int /*<<< orphan*/  hdr; } ;
struct TYPE_9__ {int /*<<< orphan*/  u6_addr8; } ;
struct TYPE_10__ {TYPE_3__ in6_u; } ;
struct sockaddr_in6 {TYPE_4__ sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct TYPE_7__ {int s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct phys_addr {int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {TYPE_5__* be_cq; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {scalar_t__ nxt_cqid; scalar_t__ num_cpus; struct be_ctrl_info ctrl; struct hwi_controller* phwi_ctrlr; } ;
struct beiscsi_endpoint {unsigned short ep_cid; int dst_addr; int* dst6_addr; void* ip_type; void* dst_tcpport; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {unsigned int tag0; unsigned short cid; unsigned short defq_id; unsigned short hdr_ring_id; unsigned short data_ring_id; int do_offload; TYPE_6__ dataout_template_pa; int /*<<< orphan*/  cq_id; void* tcp_port; TYPE_2__ ip_address; int /*<<< orphan*/  hdr; } ;
struct be_dma_mem {int dma; int size; struct tcp_connect_and_offload_in* va; } ;
typedef  int __be32 ;
struct TYPE_11__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 void* BE2_IPV4 ; 
 void* BE2_IPV6 ; 
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct beiscsi_hba*) ; 
 scalar_t__ FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,struct phys_addr*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_TCP_CONNECT_AND_OFFLOAD ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 unsigned int FUNC3 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcp_connect_and_offload_in*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct be_ctrl_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tcp_connect_and_offload_in*,int /*<<< orphan*/ ,int) ; 
 struct be_sge* FUNC12 (struct tcp_connect_and_offload_in*) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int) ; 
 struct tcp_connect_and_offload_in* FUNC17 (struct beiscsi_hba*) ; 

int FUNC18(struct beiscsi_hba *phba,
			 struct sockaddr *dst_addr,
			 struct beiscsi_endpoint *beiscsi_ep,
			 struct be_dma_mem *nonemb_cmd)
{
	struct hwi_controller *phwi_ctrlr;
	struct hwi_context_memory *phwi_context;
	struct sockaddr_in *daddr_in = (struct sockaddr_in *)dst_addr;
	struct sockaddr_in6 *daddr_in6 = (struct sockaddr_in6 *)dst_addr;
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb;
	struct tcp_connect_and_offload_in *req;
	unsigned short def_hdr_id;
	unsigned short def_data_id;
	struct phys_addr template_address = { 0, 0 };
	struct phys_addr *ptemplate_address;
	unsigned int tag = 0;
	unsigned int i;
	unsigned short cid = beiscsi_ep->ep_cid;
	struct be_sge *sge;

	phwi_ctrlr = phba->phwi_ctrlr;
	phwi_context = phwi_ctrlr->phwi_ctxt;
	def_hdr_id = (unsigned short)FUNC1(phba);
	def_data_id = (unsigned short)FUNC0(phba);

	ptemplate_address = &template_address;
	FUNC2(phba, ptemplate_address);
	FUNC14(&ctrl->mbox_lock);
	tag = FUNC3(phba);
	if (!tag) {
		FUNC15(&ctrl->mbox_lock);
		return tag;
	}
	wrb = FUNC17(phba);
	FUNC11(wrb, 0, sizeof(*wrb));
	sge = FUNC12(wrb);

	req = nonemb_cmd->va;
	FUNC11(req, 0, sizeof(*req));
	wrb->tag0 |= tag;

	FUNC6(wrb, sizeof(*req), false, 1);
	FUNC4(&req->hdr, CMD_SUBSYSTEM_ISCSI,
			   OPCODE_COMMON_ISCSI_TCP_CONNECT_AND_OFFLOAD,
			   sizeof(*req));
	if (dst_addr->sa_family == PF_INET) {
		__be32 s_addr = daddr_in->sin_addr.s_addr;
		req->ip_address.ip_type = BE2_IPV4;
		req->ip_address.addr[0] = s_addr & 0x000000ff;
		req->ip_address.addr[1] = (s_addr & 0x0000ff00) >> 8;
		req->ip_address.addr[2] = (s_addr & 0x00ff0000) >> 16;
		req->ip_address.addr[3] = (s_addr & 0xff000000) >> 24;
		req->tcp_port = FUNC13(daddr_in->sin_port);
		beiscsi_ep->dst_addr = daddr_in->sin_addr.s_addr;
		beiscsi_ep->dst_tcpport = FUNC13(daddr_in->sin_port);
		beiscsi_ep->ip_type = BE2_IPV4;
	} else if (dst_addr->sa_family == PF_INET6) {
		req->ip_address.ip_type = BE2_IPV6;
		FUNC10(&req->ip_address.addr,
		       &daddr_in6->sin6_addr.in6_u.u6_addr8, 16);
		req->tcp_port = FUNC13(daddr_in6->sin6_port);
		beiscsi_ep->dst_tcpport = FUNC13(daddr_in6->sin6_port);
		FUNC10(&beiscsi_ep->dst6_addr,
		       &daddr_in6->sin6_addr.in6_u.u6_addr8, 16);
		beiscsi_ep->ip_type = BE2_IPV6;
	} else{
		FUNC7(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BG_%d : unknown addr family %d\n",
			    dst_addr->sa_family);
		FUNC15(&ctrl->mbox_lock);
		FUNC9(&phba->ctrl, tag);
		return -EINVAL;

	}
	req->cid = cid;
	i = phba->nxt_cqid++;
	if (phba->nxt_cqid == phba->num_cpus)
		phba->nxt_cqid = 0;
	req->cq_id = phwi_context->be_cq[i].id;
	FUNC7(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
		    "BG_%d : i=%d cq_id=%d\n", i, req->cq_id);
	req->defq_id = def_hdr_id;
	req->hdr_ring_id = def_hdr_id;
	req->data_ring_id = def_data_id;
	req->do_offload = 1;
	req->dataout_template_pa.lo = ptemplate_address->lo;
	req->dataout_template_pa.hi = ptemplate_address->hi;
	sge->pa_hi = FUNC8(FUNC16(nonemb_cmd->dma));
	sge->pa_lo = FUNC8(nonemb_cmd->dma & 0xFFFFFFFF);
	sge->len = FUNC8(nonemb_cmd->size);
	FUNC5(phba);
	FUNC15(&ctrl->mbox_lock);
	return tag;
}