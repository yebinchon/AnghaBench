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
typedef  int /*<<< orphan*/  u64 ;
struct spu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  spe_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct spu*) ; 

__attribute__((used)) static u64 FUNC2(struct spu *spu, int class)
{
	u64 stat;

	FUNC0(FUNC1(spu)->spe_id, class, &stat);
	return stat;
}