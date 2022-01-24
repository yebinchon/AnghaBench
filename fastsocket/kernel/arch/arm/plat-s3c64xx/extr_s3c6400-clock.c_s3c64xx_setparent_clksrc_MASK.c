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
typedef  int u32 ;
struct clksrc_clk {int mask; int shift; struct clk_sources* sources; } ;
struct clk_sources {int nr_sources; struct clk** sources; } ;
struct clk {struct clk* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  S3C_CLK_SRC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct clksrc_clk* FUNC2 (struct clk*) ; 

__attribute__((used)) static int FUNC3(struct clk *clk, struct clk *parent)
{
	struct clksrc_clk *sclk = FUNC2(clk);
	struct clk_sources *srcs = sclk->sources;
	u32 clksrc = FUNC0(S3C_CLK_SRC);
	int src_nr = -1;
	int ptr;

	for (ptr = 0; ptr < srcs->nr_sources; ptr++)
		if (srcs->sources[ptr] == parent) {
			src_nr = ptr;
			break;
		}

	if (src_nr >= 0) {
		clksrc &= ~sclk->mask;
		clksrc |= src_nr << sclk->shift;

		FUNC1(clksrc, S3C_CLK_SRC);

		clk->parent = parent;
		return 0;
	}

	return -EINVAL;
}