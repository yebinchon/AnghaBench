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
struct clk {struct clk* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  S3C2440_CAMDIVN ; 
 unsigned long S3C2440_CAMDIVN_DVSEN ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 struct clk clk_f ; 
 struct clk clk_h ; 

__attribute__((used)) static int FUNC2(struct clk *clk, struct clk *parent)
{
	unsigned long camdivn;
	unsigned long dvs;

	if (parent == &clk_f)
		dvs = 0;
	else if (parent == &clk_h)
		dvs = S3C2440_CAMDIVN_DVSEN;
	else
		return -EINVAL;

	clk->parent = parent;

	camdivn  = FUNC0(S3C2440_CAMDIVN);
	camdivn &= ~S3C2440_CAMDIVN_DVSEN;
	camdivn |= dvs;
	FUNC1(camdivn, S3C2440_CAMDIVN);

	return 0;
}