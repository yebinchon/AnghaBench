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
struct mtd_info {scalar_t__ size; scalar_t__ priv; } ;
struct erase_info {scalar_t__ addr; scalar_t__ len; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MTD_ERASE_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct erase_info*) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd, struct erase_info *instr)
{
	if (instr->addr + instr->len > mtd->size)
		return -EINVAL;

	FUNC0((char *)mtd->priv + instr->addr, 0xff, instr->len);

	instr->state = MTD_ERASE_DONE;
	FUNC1(instr);

	return 0;
}