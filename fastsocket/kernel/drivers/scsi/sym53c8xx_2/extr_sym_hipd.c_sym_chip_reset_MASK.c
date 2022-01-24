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
struct sym_hcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRST ; 
 int /*<<< orphan*/  nc_istat ; 
 int /*<<< orphan*/  nc_mbox1 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3 (struct sym_hcb *np)
{
	FUNC1(np, nc_istat, SRST);
	FUNC0(np, nc_mbox1);
	FUNC2(10);
	FUNC1(np, nc_istat, 0);
	FUNC0(np, nc_mbox1);
	FUNC2(2000);	/* For BUS MODE to settle */
}