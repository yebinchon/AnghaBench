#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_short ;
struct TYPE_4__ {scalar_t__ rx2_fifo_start; } ;
struct TYPE_5__ {TYPE_1__ fifo; } ;
struct TYPE_6__ {TYPE_2__ fp; } ;
struct s_smc {TYPE_3__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_EAA1 ; 
 int /*<<< orphan*/  FM_RPXA1 ; 
 int /*<<< orphan*/  FM_SWPXA1 ; 
 int /*<<< orphan*/  FM_WPXA1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*) ; 

__attribute__((used)) static void FUNC4(struct s_smc *smc)
{
	u_short	rbc_ram_addr ;

	/*
	 * set unused pointers or permanent pointers
	 */
	rbc_ram_addr = smc->hw.fp.fifo.rx2_fifo_start - 1 ;

	FUNC1(FUNC0(FM_RPXA1),rbc_ram_addr) ;	/* a1-send pointer */
	FUNC1(FUNC0(FM_WPXA1),rbc_ram_addr) ;
	FUNC1(FUNC0(FM_SWPXA1),rbc_ram_addr) ;
	FUNC1(FUNC0(FM_EAA1),rbc_ram_addr) ;

	FUNC2(smc) ;
	FUNC3(smc) ;
}