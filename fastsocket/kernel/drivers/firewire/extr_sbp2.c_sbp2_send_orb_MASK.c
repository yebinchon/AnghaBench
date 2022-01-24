#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {int /*<<< orphan*/  low; scalar_t__ high; } ;
struct sbp2_orb {TYPE_2__ pointer; int /*<<< orphan*/  t; int /*<<< orphan*/  kref; int /*<<< orphan*/  link; int /*<<< orphan*/  request_bus; } ;
struct sbp2_logical_unit {int /*<<< orphan*/  orb_list; int /*<<< orphan*/  tgt; } ;
struct fw_device {int /*<<< orphan*/  max_speed; TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCODE_WRITE_BLOCK_REQUEST ; 
 int /*<<< orphan*/  complete_transaction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,struct sbp2_orb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fw_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sbp2_orb *orb, struct sbp2_logical_unit *lu,
			  int node_id, int generation, u64 offset)
{
	struct fw_device *device = FUNC6(lu->tgt);
	unsigned long flags;

	orb->pointer.high = 0;
	orb->pointer.low = FUNC0(orb->request_bus);

	FUNC4(&device->card->lock, flags);
	FUNC3(&orb->link, &lu->orb_list);
	FUNC5(&device->card->lock, flags);

	/* Take a ref for the orb list and for the transaction callback. */
	FUNC2(&orb->kref);
	FUNC2(&orb->kref);

	FUNC1(device->card, &orb->t, TCODE_WRITE_BLOCK_REQUEST,
			node_id, generation, device->max_speed, offset,
			&orb->pointer, sizeof(orb->pointer),
			complete_transaction, orb);
}