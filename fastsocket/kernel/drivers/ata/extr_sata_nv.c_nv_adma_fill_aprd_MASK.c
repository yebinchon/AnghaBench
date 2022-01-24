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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct nv_adma_prd {scalar_t__ packet_len; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int flags; } ;
struct ata_queued_cmd {int n_elem; TYPE_1__ tf; } ;

/* Variables and functions */
 int ATA_TFLAG_WRITE ; 
 int /*<<< orphan*/  NV_APRD_CONT ; 
 int /*<<< orphan*/  NV_APRD_END ; 
 int /*<<< orphan*/  NV_APRD_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct scatterlist*) ; 
 scalar_t__ FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC4(struct ata_queued_cmd *qc,
			      struct scatterlist *sg,
			      int idx,
			      struct nv_adma_prd *aprd)
{
	u8 flags = 0;
	if (qc->tf.flags & ATA_TFLAG_WRITE)
		flags |= NV_APRD_WRITE;
	if (idx == qc->n_elem - 1)
		flags |= NV_APRD_END;
	else if (idx != 4)
		flags |= NV_APRD_CONT;

	aprd->addr  = FUNC1(((u64)FUNC2(sg)));
	aprd->len   = FUNC0(((u32)FUNC3(sg))); /* len in bytes */
	aprd->flags = flags;
	aprd->packet_len = 0;
}