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
struct sk_buff {int dummy; } ;
struct dma_pub {int dummy; } ;
struct dma_info {int /*<<< orphan*/  name; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct dma_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

void FUNC3(struct dma_pub *pub)
{
	struct dma_info *di = (struct dma_info *)pub;
	struct sk_buff *p;

	FUNC1(di->core, "%s:\n", di->name);

	while ((p = FUNC0(di, true)))
		FUNC2(p);
}