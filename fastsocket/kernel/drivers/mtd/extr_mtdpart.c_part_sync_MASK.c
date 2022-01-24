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
struct mtd_part {TYPE_1__* master; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sync ) (TYPE_1__*) ;} ;

/* Variables and functions */
 struct mtd_part* FUNC0 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd)
{
	struct mtd_part *part = FUNC0(mtd);
	part->master->sync(part->master);
}