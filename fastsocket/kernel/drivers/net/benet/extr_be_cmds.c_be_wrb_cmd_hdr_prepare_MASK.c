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
typedef  int /*<<< orphan*/  ulong ;
typedef  void* u8 ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {int payload_length; int embedded; } ;
struct be_dma_mem {int dma; int size; } ;
struct be_cmd_req_hdr {scalar_t__ version; void* request_length; void* subsystem; void* opcode; } ;

/* Variables and functions */
 int MCC_WRB_EMBEDDED_MASK ; 
 int MCC_WRB_SGE_CNT_MASK ; 
 int MCC_WRB_SGE_CNT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct be_mcc_wrb*,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct be_mcc_wrb*,int /*<<< orphan*/ ) ; 
 struct be_sge* FUNC3 (struct be_mcc_wrb*) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct be_cmd_req_hdr *req_hdr,
				u8 subsystem, u8 opcode, int cmd_len,
				struct be_mcc_wrb *wrb, struct be_dma_mem *mem)
{
	struct be_sge *sge;

	req_hdr->opcode = opcode;
	req_hdr->subsystem = subsystem;
	req_hdr->request_length = FUNC1(cmd_len - sizeof(*req_hdr));
	req_hdr->version = 0;
	FUNC2(wrb, (ulong) req_hdr);
	wrb->payload_length = cmd_len;
	if (mem) {
		wrb->embedded |= (1 & MCC_WRB_SGE_CNT_MASK) <<
			MCC_WRB_SGE_CNT_SHIFT;
		sge = FUNC3(wrb);
		sge->pa_hi = FUNC1(FUNC4(mem->dma));
		sge->pa_lo = FUNC1(mem->dma & 0xFFFFFFFF);
		sge->len = FUNC1(mem->size);
	} else
		wrb->embedded |= MCC_WRB_EMBEDDED_MASK;
	FUNC0(wrb, 8);
}