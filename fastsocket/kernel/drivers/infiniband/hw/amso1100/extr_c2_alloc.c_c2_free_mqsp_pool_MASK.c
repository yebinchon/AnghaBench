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
struct sp_chunk {struct sp_chunk* next; } ;
struct c2_dev {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sp_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC1 (struct sp_chunk*,int /*<<< orphan*/ ) ; 

void FUNC2(struct c2_dev *c2dev, struct sp_chunk *root)
{
	struct sp_chunk *next;

	while (root) {
		next = root->next;
		FUNC0(&c2dev->pcidev->dev, PAGE_SIZE, root,
				  FUNC1(root, mapping));
		root = next;
	}
}