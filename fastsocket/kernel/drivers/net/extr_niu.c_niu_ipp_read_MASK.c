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
typedef  int /*<<< orphan*/  u64 ;
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPP_DFIFO_RD0 ; 
 int /*<<< orphan*/  IPP_DFIFO_RD1 ; 
 int /*<<< orphan*/  IPP_DFIFO_RD2 ; 
 int /*<<< orphan*/  IPP_DFIFO_RD3 ; 
 int /*<<< orphan*/  IPP_DFIFO_RD4 ; 
 int /*<<< orphan*/  IPP_DFIFO_RD_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct niu *np, int index, u64 *data)
{
	FUNC1(IPP_DFIFO_RD_PTR, index);
	data[0] = FUNC0(IPP_DFIFO_RD0);
	data[1] = FUNC0(IPP_DFIFO_RD1);
	data[2] = FUNC0(IPP_DFIFO_RD2);
	data[3] = FUNC0(IPP_DFIFO_RD3);
	data[4] = FUNC0(IPP_DFIFO_RD4);
}