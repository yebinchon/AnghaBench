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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct vnic_rq {int dummy; } ;
struct rq_enet_desc {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  RQ_ENET_TYPE_NOT_SOP ; 
 int /*<<< orphan*/  RQ_ENET_TYPE_ONLY_SOP ; 
 int VNIC_PADDR_TARGET ; 
 int /*<<< orphan*/  FUNC0 (struct rq_enet_desc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rq_enet_desc* FUNC1 (struct vnic_rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_rq*,void*,unsigned int,scalar_t__,unsigned int) ; 

__attribute__((used)) static inline void FUNC3(struct vnic_rq *rq,
	void *os_buf, unsigned int os_buf_index,
	dma_addr_t dma_addr, unsigned int len)
{
	struct rq_enet_desc *desc = FUNC1(rq);
	u8 type = os_buf_index ?
		RQ_ENET_TYPE_NOT_SOP : RQ_ENET_TYPE_ONLY_SOP;

	FUNC0(desc,
		(u64)dma_addr | VNIC_PADDR_TARGET,
		type, (u16)len);

	FUNC2(rq, os_buf, os_buf_index, dma_addr, len);
}