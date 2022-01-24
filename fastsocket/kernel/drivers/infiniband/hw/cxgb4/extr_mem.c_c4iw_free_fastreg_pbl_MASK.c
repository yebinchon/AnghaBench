#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ib_fast_reg_page_list {int dummy; } ;
struct c4iw_fr_page_list {int /*<<< orphan*/  size; TYPE_4__* dev; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_7__ {TYPE_2__ lldi; } ;
struct TYPE_8__ {TYPE_3__ rdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct c4iw_fr_page_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC1 (struct c4iw_fr_page_list*,int /*<<< orphan*/ ) ; 
 struct c4iw_fr_page_list* FUNC2 (struct ib_fast_reg_page_list*) ; 

void FUNC3(struct ib_fast_reg_page_list *ibpl)
{
	struct c4iw_fr_page_list *c4pl = FUNC2(ibpl);

	FUNC0(&c4pl->dev->rdev.lldi.pdev->dev, c4pl->size,
			  c4pl, FUNC1(c4pl, mapping));
}