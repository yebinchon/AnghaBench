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
struct s3c64xx_dma_buff {int /*<<< orphan*/  lli_dma; int /*<<< orphan*/  lli; } ;

/* Variables and functions */
 int /*<<< orphan*/  dma_pool ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c64xx_dma_buff*) ; 

__attribute__((used)) static void FUNC2(struct s3c64xx_dma_buff *buff)
{
	FUNC0(dma_pool, buff->lli, buff->lli_dma);
	FUNC1(buff);
}