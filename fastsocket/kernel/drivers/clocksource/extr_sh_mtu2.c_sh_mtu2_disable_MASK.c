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
struct sh_mtu2_priv {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mtu2_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sh_mtu2_priv *p)
{
	/* disable channel */
	FUNC1(p, 0);

	/* stop clock */
	FUNC0(p->clk);
}