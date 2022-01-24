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
struct dma_pub {int dummy; } ;
struct dma_info {int /*<<< orphan*/  txout; int /*<<< orphan*/  txin; } ;

/* Variables and functions */
 int FUNC0 (struct dma_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct dma_pub *pub)
{
	struct dma_info *di = (struct dma_info *)pub;
	return FUNC0(di, di->txin, di->txout);
}