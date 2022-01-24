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
struct throtl_grp {unsigned int* iops; } ;
struct throtl_data {int dummy; } ;
struct blkio_group {int dummy; } ;

/* Variables and functions */
 size_t WRITE ; 
 struct throtl_grp* FUNC0 (struct blkio_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct throtl_data*,struct throtl_grp*) ; 

__attribute__((used)) static void FUNC2(void *key,
			struct blkio_group *blkg, unsigned int write_iops)
{
	struct throtl_data *td = key;
	struct throtl_grp *tg = FUNC0(blkg);

	tg->iops[WRITE] = write_iops;
	FUNC1(td, tg);
}