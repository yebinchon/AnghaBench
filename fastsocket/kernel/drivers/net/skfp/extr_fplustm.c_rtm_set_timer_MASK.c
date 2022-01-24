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
struct TYPE_4__ {TYPE_1__* a; } ;
struct s_smc {TYPE_2__ mib; } ;
struct TYPE_3__ {scalar_t__ fddiPATHT_Rmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B2_RTM_INI ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 size_t PATH0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(struct s_smc *smc)
{
	/*
	 * MIB timer and hardware timer have the same resolution of 80nS
	 */
	FUNC1("RMT: setting new fddiPATHT_Rmode, t = %d ns \n",
		(int) smc->mib.a[PATH0].fddiPATHT_Rmode,0) ;
	FUNC2(FUNC0(B2_RTM_INI),smc->mib.a[PATH0].fddiPATHT_Rmode) ;
}