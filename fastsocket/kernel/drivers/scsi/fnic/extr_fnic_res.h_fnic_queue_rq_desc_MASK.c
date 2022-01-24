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
typedef  int u64 ;
typedef  scalar_t__ u16 ;
struct vnic_rq {int dummy; } ;
struct rq_enet_desc {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  RQ_ENET_TYPE_ONLY_SOP ; 
 int VNIC_PADDR_TARGET ; 
 int /*<<< orphan*/  FUNC0 (struct rq_enet_desc*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 struct rq_enet_desc* FUNC1 (struct vnic_rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_rq*,void*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct vnic_rq *rq,
				      void *os_buf, dma_addr_t dma_addr,
				      u16 len)
{
	struct rq_enet_desc *desc = FUNC1(rq);

	FUNC0(desc,
		(u64)dma_addr | VNIC_PADDR_TARGET,
		RQ_ENET_TYPE_ONLY_SOP,
		(u16)len);

	FUNC2(rq, os_buf, 0, dma_addr, len);
}