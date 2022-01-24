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
struct TYPE_2__ {int /*<<< orphan*/  st_fast; } ;
struct s_smc {TYPE_1__ t; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_SMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_FAST ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 

void FUNC2(struct s_smc *smc)
{
	FUNC1(smc,&smc->t.st_fast,32L, FUNC0(EVENT_SMT,SM_FAST)); 
}