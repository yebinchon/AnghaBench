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
struct ht_irq_msg {int /*<<< orphan*/  address_hi; int /*<<< orphan*/  address_lo; } ;
struct ht_irq_cfg {struct ht_irq_msg msg; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* update ) (int /*<<< orphan*/ ,unsigned int,struct ht_irq_msg*) ;scalar_t__ pos; scalar_t__ idx; } ;

/* Variables and functions */
 struct ht_irq_cfg* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  ht_irq_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,struct ht_irq_msg*) ; 

void FUNC6(unsigned int irq, struct ht_irq_msg *msg)
{
	struct ht_irq_cfg *cfg = FUNC0(irq);
	unsigned long flags;
	FUNC3(&ht_irq_lock, flags);
	if (cfg->msg.address_lo != msg->address_lo) {
		FUNC1(cfg->dev, cfg->pos + 2, cfg->idx);
		FUNC2(cfg->dev, cfg->pos + 4, msg->address_lo);
	}
	if (cfg->msg.address_hi != msg->address_hi) {
		FUNC1(cfg->dev, cfg->pos + 2, cfg->idx + 1);
		FUNC2(cfg->dev, cfg->pos + 4, msg->address_hi);
	}
	if (cfg->update)
		cfg->update(cfg->dev, irq, msg);
	FUNC4(&ht_irq_lock, flags);
	cfg->msg = *msg;
}