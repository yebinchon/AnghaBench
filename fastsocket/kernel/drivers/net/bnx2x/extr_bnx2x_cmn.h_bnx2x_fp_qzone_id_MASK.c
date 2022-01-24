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
typedef  scalar_t__ u8 ;
struct bnx2x_fastpath {scalar_t__ cl_id; int /*<<< orphan*/  bp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ETH_MAX_RX_CLIENTS_E1H ; 

__attribute__((used)) static inline u8 FUNC2(struct bnx2x_fastpath *fp)
{
	if (FUNC1(fp->bp))
		return fp->cl_id + FUNC0(fp->bp) * ETH_MAX_RX_CLIENTS_E1H;
	else
		return fp->cl_id;
}