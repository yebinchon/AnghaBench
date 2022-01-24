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
struct TYPE_4__ {int /*<<< orphan*/  host; } ;
struct c2_mq {int q_size; int msg_size; TYPE_2__ msg_pool; } ;
struct c2_dev {TYPE_1__* pcidev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC1 (struct c2_mq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct c2_dev *c2dev, struct c2_mq *mq)
{
	FUNC0(&c2dev->pcidev->dev, mq->q_size * mq->msg_size,
			  mq->msg_pool.host, FUNC1(mq, mapping));
}