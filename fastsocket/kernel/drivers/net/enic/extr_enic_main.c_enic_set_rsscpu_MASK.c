#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union vnic_rss_cpu {TYPE_1__* cpu; } ;
typedef  int u8 ;
struct enic {unsigned int rq_count; int /*<<< orphan*/  pdev; int /*<<< orphan*/  devcmd_lock; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {unsigned int* b; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct enic*,int /*<<< orphan*/ ,int) ; 
 union vnic_rss_cpu* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,union vnic_rss_cpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct enic *enic, u8 rss_hash_bits)
{
	dma_addr_t rss_cpu_buf_pa;
	union vnic_rss_cpu *rss_cpu_buf_va = NULL;
	unsigned int i;
	int err;

	rss_cpu_buf_va = FUNC1(enic->pdev,
		sizeof(union vnic_rss_cpu), &rss_cpu_buf_pa);
	if (!rss_cpu_buf_va)
		return -ENOMEM;

	for (i = 0; i < (1 << rss_hash_bits); i++)
		(*rss_cpu_buf_va).cpu[i/4].b[i%4] = i % enic->rq_count;

	FUNC3(&enic->devcmd_lock);
	err = FUNC0(enic,
		rss_cpu_buf_pa,
		sizeof(union vnic_rss_cpu));
	FUNC4(&enic->devcmd_lock);

	FUNC2(enic->pdev, sizeof(union vnic_rss_cpu),
		rss_cpu_buf_va, rss_cpu_buf_pa);

	return err;
}